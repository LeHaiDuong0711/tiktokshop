<?php



if ($act == 'index') {

    $page_size = !empty($main->get("page_size")) ? $main->get("page_size") : 50;

    $orders = $client->Order->getOrderList([

        'page_size' => $page_size,
    ]);
    for ($i = 0; $i < count($orders['order_list']); $i++) {
        $order = $orders['order_list'][$i];
        $orders['order_list'][$i]['update_time'] = date('d/m/Y H:i:s',  $order['update_time']);

        $status = $order['order_status']; // Giá trị trạng thái
        $statusName = ""; // Biến để lưu tên trạng thái

        switch ($status) {
            default:
                $statusName = "CHƯA THANH TOÁN";
                break;
            case 105:
                $statusName = "ĐANG GIỮ";
                break;
            case 111:
                $statusName = "CHỜ GIAO HÀNG";
                break;
            case 112:
                $statusName = "CHỜ LẤY HÀNG";
                break;
            case 114:
                $statusName = "ĐANG GIAO HÀNG MỘT PHẦN";
                break;
            case 121:
                $statusName = "ĐANG VẬN CHUYỂN";
                break;
            case 122:
                $statusName = "ĐÃ GIAO HÀNG";
                break;
            case 130:
                $statusName = "ĐÃ HOÀN THÀNH";
                break;
            case 140:
                $statusName = "ĐÃ HỦY";
                break;
           
        }

        $orders['order_list'][$i]['order_status'] = $statusName;
    }
    $st->assign('data', $orders);
} else if ($act == 'detail') {

    $id = $main->get('id');
    $orders = $client->Order->getOrderDetail($id);
    $st->assign('data', $orders);
}
