<?php



if ($act == 'index') {

    

    $orders = $client->Order->getOrderList([
        // 'order_status' => 100, // Unpaid order
        'page_size' => 50,
    ]);
    $st->assign('data', $orders);
} else if ($act == 'detail') {
    
    $id = $main->get('id');
    $orders = $client->Order->getOrderDetail($id);
    $st->assign('data', $orders);
}
