<?php


$nod        = $main->get('nod');
if($act=='list'){
    $auth = $client->auth();
	try {
		$authorization_code =  $_SESSION['token'];
		$token = $auth->getToken($authorization_code);
		$_SESSION['token'] = $token['access_token'];

		$_SESSION['refresh_token'] = $token['refresh_token'];
	} catch (Exception $e) {

		if (!isset($_SESSION['token'])) {

			$_SESSION['state'] = $state = $main->str_rand(40);
			$authUrl = $auth->createAuthRequest($state, true);


			if (isset($_GET['code'])) {

				$_SESSION['token'] = $_GET['code'];
				setcookie('token', $_SESSION['token']);
				header('Location: http://demotiktok.local/danh-sach-don-hang');
			} else {
				header('Location: ' . $authUrl);
			}
		} else {
			$new_token = $auth->refreshNewToken($_SESSION['refresh_token']);

			$_SESSION['token'] = $new_token['access_token'];
			$_SESSION['refresh_token'] = $new_token['refresh_token'];
		}
	}
	$access_token = $_SESSION['token'];
	$client->setAccessToken($access_token);
	$authorizedShopList = $client->Shop->getAuthorizedShop();
	$client->setAccessToken($access_token);
    $order_id = $main->post('order_id');
    $cancel_reason_key = $main->post('cancel_reason_key');
    $result = $client->Reverse->cancelOrder($order_id,$cancel_reason_key);
    if($result){
        echo 'done##', $main->toJsonData(200, 'success', "");
    }
}