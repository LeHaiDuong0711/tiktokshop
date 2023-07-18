<?php



if ($act == 'index') {
    
    $orderList = new orderList();
  
    $orders = $client->Order->getOrderList([
        // 'order_status' => 100, // Unpaid order
        'page_size' => 50,
    ]);
    $st->assign('orderList', $orders);
}
