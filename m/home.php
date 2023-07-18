<?php

/**
 * m/home.php dành cho các thông tin chưa login tất cả được điều hướng và xử lý tại đây
 */

/**
 * BEGIN Trang home
 */

$members = new members();

// if (isset($_SESSION['username'])) {
// 	$members->set('user_id', $_SESSION['username']);
// 	$dClientLogin = $members->get_detail();

// 	if (!isset($dClientLogin['user_id'])) {
// 		$main->redirect($link . "/?m=panel&act=login");
// 	}
// }

if ($act == 'index') {
	$title .= 'Trang chủ';

	$news_category  = new news_category();
	$news           = new news();

	$manager_image = new manager_image();

	$manager_image->set('type', 'slide');
	$manager_image->set('is_hidden', '0');
	$st->assign('lSlide', $manager_image->filter(''));

} elseif ($act == 'news') {
	$title .= 'Tin tức';

	$news 			= new news();
	$news_category 	= new news_category();

	$cat_id 	= $main->get('id');
	$keyword 	= $main->get('keyword', 'keyword');
	$page 		= $main->get('page');

	if (isset($cat_id) && $cat_id != '') {
		$news_category->set('root_id', $cat_id);
		$cat = $news_category->get_by_root_id();
	} else {
		$cat = $news_category->get_category();
	}

	$kq = array();

	$news->set('news_category_id', $cat_id);

	if ($cat_id == '') {
		$kq['category']['name'] = "Tin tức";
		$kq['category']['link_url'] = "tin-tuc";
	} else {
		$news_category->set('id', $cat_id);
		$dCate = $news_category->get_detail();
		if (isset($dCate['id'])) {
			$kq['category']['name'] = $dCate['name'];
			$kq['category']['link_url'] = $dCate['link_url'] . '-cn' . $dCate['id'];
		} else {
			$kq['category']['name'] = "Tin tức";
			$kq['category']['link_url'] = "tin-tuc";
		}
	}

	if ($page < 1) $page = 1;
	$paging->limit = $limit = $setup['perpage'];
	$offset                 = ($page - 1) * $limit;
	$paging->page 			= $page;
	$kq['page']             = $page;
	$kq['perpage']          = $limit + 0;
	$kq['total_record'] 	= $news->filter_count($keyword);
	$paging->total 			= $kq['total_record'];
	$kq['total_page'] 		= ceil($kq['total_record'] / $setup['perpage']);
	$kq['page_html'] 		= $paging->display('paging_fund');
	$kq['l'] 				= $news->filter($keyword, $offset, $limit);

	$st->assign('data', $kq);
	$st->assign('cat', $cat);

	// print_r($kq);
	// exit();

} elseif ($act == 'news_detail') {

	$title .= 'Chi tiết tin tức';

	$news 	= new news();
	$id 	= $main->get('id');

	$news->set('id', $id);
	$kq = $news->get_detail_by_id();

	if (!isset($kq['id'])) {
		$main->redirect($link . "/404");
	} else {

		if ($kq['link'] != '') {
			$url = $kq['link'];
			$query_str = parse_url($url, PHP_URL_QUERY);
			parse_str($query_str, $query_params);

			if (isset($query_params['v']) && $query_params['v'] != '') {
				$kq['link'] = $query_params['v'];
			} else {
				$url = explode('youtu.be/', $kq['link']);
				$kq['link'] = $url[1];
			}
		}

		$st->assign('data', $kq);
		$meta_title = $kq['title'];
		$meta_description = $kq['short_description'];
		$meta_image = $kq['avatar'];

		$news->set('id', $kq['id']);
		$news->set('news_category_id', $kq['news_category_id']);
		$lNewsByCategoryId = $news->get_news_by_category_id(); //list tin tức cùng danh mục

		// print_r($lNewsByCategoryId);
		// exit();

		$type_suggest = 1; //load tin nổi bật
		$suggest = $news->get_news_suggest($type_suggest);

		$st->assign('suggest', $suggest);
		$st->assign('lNewsByCategoryId', $lNewsByCategoryId);
	}

	/**
	 * END tin tức và xử lý tin tức 
	 */

	/**
	 * BEGIN sản phẩm trang chủ
	 */
}  elseif ($act == 'register') {

	$members = new members();

	$members->set('fullname', $main->post('fullname'));
	$members->set('mobile', $main->post('mobile'));
	$members->set('email', $main->post('email'));
	$members->set('password', $main->post('password'));

	if ($main->post('mobile') != '' && $members->is_exist_mobile_or_email($main->post('mobile'))) {
		echo 'done##', $main->toJsonData(403, 'Số điện thoại này đã được sử dụng', null);
	} else if ($main->post('email') != '' && $members->is_exist_mobile_or_email($main->post('email'))) {
		echo 'done##', $main->toJsonData(403, 'Email này đã được sử dụng', null);
	} else {
		$members->set('created_by', 'Tự đăng ký');
		$members->set('user_id', '');
		$members->set('shop_id', 1);
		$user_id = $members->add();

		$members->set('user_id', $user_id);
		$dLogin = $members->get_detail();

		if (isset($dLogin['user_id'])) {

			$_SESSION['username'] 	= $dLogin['user_id'];
			$_SESSION['fullname'] 	= $dLogin['fullname'];
			$_SESSION['password'] 	= $dLogin['password'];

			setcookie('username', $_SESSION['username'], time() + 640000);
			setcookie('password', $_SESSION['password'], time() + 640000);

			echo 'done##', $main->toJsonData(200, 'success', null);
		} else {
			echo 'done##', $main->toJsonData(403, 'Lỗi trong quá trình đăng ký.', null);
		}
	}
} elseif ($act == 'sb_register') {
	$title .= 'Đăng ký tài khoản';
} else if ($act == 'login') {
	$members = new members();
	$title .= $lang['login']; //Đăng nhập hệ thống
	$members->set('email', @$_SESSION['username']);
	$members->set('password', @$_SESSION['password']);
	$dClientLogin = $members->check_login();

	if (isset($dClientLogin['user_id'])) {
		$main->redirect($domain . "/thong-tin");
	}
	// $main->redirect($domain."/dang-nhap");

} else if ($act == 'sb_login') {
	$members = new members();
	$username 		= $main->post('username');
	$password 		= $main->post('password');

	if (isset($_SESSION['username']) && isset($_SESSION['password'])) {

		$members->set('user_id', $_SESSION['username']);
		$members->set('password', $_SESSION['password']);
		$dClientLogin = $members->check_login();

		if (isset($dClientLogin['user_id'])) {
			$main->redirect($domain . "/thong-tin");
			$db->close();
			exit();
		}
	} else if ($username == '') {
		$main->alert('Vui lòng nhập thông tin đăng nhập.');
		$main->redirect($domain . "/dang-nhap");
		$db->close();
		exit();
	} else if ($password == '') {
		$main->alert('Vui lòng nhập mật khẩu.');
		$main->redirect($domain . "/dang-nhap");
		$db->close();
		exit();
	}

	/**
	 * BEGIN hubuser AAAAAAAA
	 */
	// $hubuser->set('username', $username);
	// $hubuser->set('password', $password);
	// $dClientHub = $hubuser->login();

	// if( !isset($dClientHub['status']) ){

	// 	$main->alert("Lỗi: ".json_encode($dClientHub) );
	// 	$main->redirect($link."/?m=user&act=login");
	// 	exit();

	// }else if( isset($dClientHub['status']) && $dClientHub['status'] != 200 ){

	// 	$main->alert( $dClientHub['message'] );
	// 	$main->redirect($link."/?m=user&act=login");
	// 	exit();

	// }else if( isset($dClientHub['status']) && $dClientHub['data']['id'] && $dClientHub['data']['id'] != '' ){

	// 	//Thêm hoặc update thông tin vào bảng members trước khi vào trang đăng nhập;
	// 	$dClientHub = $dClientHub['data'];

	// 	$_SESSION['username'] 	= $dClientHub['id'];
	// 	$_SESSION['fullname'] 	= $dClientHub['fullname'];
	// 	$_SESSION['password'] 	= $dClientHub['token'];


	// setcookie('username', $_SESSION['username'], time() + 640000);
	// setcookie('password', $_SESSION['password'], time() + 640000);

	// $main->redirect($link."/?m=client&act=login");
	// exit();



	// }else{
	// 	$main->alert("Sai tên đăng nhập hay mật khẩu truy cập");
	// 	$main->redirect($link."/?m=user&act=login");
	// 	exit();
	// }
	/**
	 * END hubuser AAAAAAAA
	 */

	$members->set('email', $username);
	$salt = $members->get_salt();
	$pw = md5($password);
	$pw = $pw . $salt;
	$pw = md5($pw);

	$members->set('password', $pw);
	$dClientLogin = $members->check_login();

	if (isset($dClientLogin['user_id']) && $dClientLogin['user_id'] != '') {

		$_SESSION['username'] 	= $dClientLogin['user_id'];
		$_SESSION['fullname'] 	= $dClientLogin['fullname'];
		$_SESSION['password'] 	= $dClientLogin['password'];

		setcookie('username', $_SESSION['username'], time() + 640000);
		setcookie('password', $_SESSION['password'], time() + 640000);

		$main->redirect($domain . "/thong-tin");
		exit();
	} else {

		$main->alert("Sai tên đăng nhập hay mật khẩu truy cập");
		$main->redirect($domain . "/dang-nhap");
		exit();
	}
} elseif ($act == 'forgotpassword') {
	$title .= 'Quên mật khẩu';
	/**
	 * END Client Login
	 */

	/**
	 * BEGIN Admin login
	 */
} elseif ($act == 'admin_login') {
	$title .= 'Đăng nhập';
} elseif ($act == 'admin_sb_login') {
	$title .= 'Submiting login infomations';
	//Sau khi admin login thì redirect về trang admin

} elseif ($act == 'admin_forgotpassword') {
	$title .= 'Quên mật khẩu';
	/**
	 * END Client Login
	 */

	/**
	 * BEGIN trang lỗi và thông báo lỗi
	 */
} elseif ($act == 'error') {
	$title .= 'Lỗi';
	/**
	 * END trang lỗi và thông báo lỗi
	 */
} else {
	$main->redirect($domain); //Nếu không xác định được trang cần tìm có thể redirect ra trang home hoặc show trang not found
}
