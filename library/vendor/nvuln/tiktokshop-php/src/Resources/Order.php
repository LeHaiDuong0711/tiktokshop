<?php
/*
 * This file is part of tiktok-shop.
 *
 * (c) Jin <j@sax.vn>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace NVuln\TiktokShop\Resources;

use GuzzleHttp\RequestOptions;
use NVuln\TiktokShop\Resource;

class Order extends Resource
{
    // order status
    public const STATUS_UNPAID = 100;//Chưa thanh toán
    public const STATUS_AWAITING_SHIPMENT = 111;//Chờ đợi hàng
    public const STATUS_AWAITING_COLLECTION = 112;//BỘ SƯU TẬP CHỜ ĐỢI
    public const STATUS_PARTIALLY_SHIPPING = 114;//Vận chuyển 1 phần
    public const STATUS_IN_TRANSIT = 121;//Trên đường vận chuyển
    public const STATUS_DELIVERED = 122;//Đã giao hàng
    public const STATUS_COMPLETED = 130;//Hoàn thành
    public const STATUS_CANCELLED = 140;//Hủy

    protected $prefix = 'orders';

    public function getOrderDetail($order_id_list = [])
    {
        return $this->call('POST', 'detail/query', [
            RequestOptions::JSON => [
                'order_id_list' => static::dataTypeCast('array', $order_id_list),
            ]
        ]);
    }

    public function getOrderList($params = [])
    {
        $params = array_merge([
            'page_size' => 20,
        ], $params);

        return $this->call('POST', 'search', [
            RequestOptions::JSON => $params,
        ]);
    }

    public function cancelOrder($params=[]){
        $params = array_merge([
            'page_size' => 20,
        ], $params);

        return $this->call('POST', 'search', [
            RequestOptions::JSON => $params,
        ]);
    }
}
