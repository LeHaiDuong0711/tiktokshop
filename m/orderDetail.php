<?php



if ($act == 'index') {
    $orderList = new orderList();
    $id = $main->get('id');
    
    $orders = $client->Order->getOrderDetail($id);
    $st->assign('orderDetail', $orders);
}
