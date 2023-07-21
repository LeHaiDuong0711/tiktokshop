<pre>
{* {print_r($orderDetail['order_list'][0])} *}

<div class="">
    <div class="row">
        <div class="col-lg-12">
            <div class="main-box clearfix">
                <div class="table-responsive">
                    <table class="table user-list">
                        <thead>
                            <tr>
                                <th><span>#</span></th>
                                <th><span>Mã sản phẩm</span></th>
                                <th class="text-center"><span>Tên sản phẩm</span></th>
                                <th><span>Số lượng</span></th>
                                <th><span>Mã SKU</span></th>
                                <th><span>SKU Sản phẩm</span></th>
                                <th><span>Hình ảnh</span></th>
                                <th><span>Giá</span></th>
                                <th><span>Khuyến mãi</span></th>
                                <th>&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>

                            {foreach from=$orderDetail['order_list'][0]['item_list'] item=item key=key name=name}
                                    <tr>
                                        <td>
                                            {$key+1}
                                        </td>
                                        <td>{$item.product_id}</td>
                                        <td class="text-center">
                                        {$item.product_name}
                                        </td>
                                        <td>
                                            {$item.quantity}
                                        </td>
                                        <td>{$item.seller_sku}</td>
                                        <td class="text-center">
                                        {$item.sku_id}
                                        </td>
                                        <td>
                                            <img src="{$item.sku_image}" />
                                        </td>
                                        <td>
                                            {$item.sku_original_price}
                                        </td>
                                        <td>
                                        {$item.sku_sale_price}
                                        </td>

                                        {* <td style="width: 20%">
                                            <a href="#" class="table-link">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a href="#" class="table-link">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a href="#" class="table-link danger">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                        </td> *}
                                    </tr>
                            {/foreach}


                        </tbody>
                    </table>
                </div>
               
            </div>
        </div>
    </div>
</div>