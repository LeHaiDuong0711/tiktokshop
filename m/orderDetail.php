<?php



if ($act == 'index') {
    $id = $main->get('id');
  
    $orders = $client->Order->getOrderDetail($id);
    $st->assign('orderDetail', $orders);
}
