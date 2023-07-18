
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="main-box clearfix">
                <div class="table-responsive">
                    <table class="table user-list">
                        <thead>
                            <tr>
                                <th><span>#</span></th>
                                <th><span>Mã đơn hàng</span></th>
                                <th class="text-center"><span>Trạng thái</span></th>
                                <th><span>Thời gian cập nhật</span></th>
                                <th>&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>

                            {foreach from=$data['order_list'] item=item key=key name=name}
                                <tr>
                                    <td>
                                        {$key+1}
                                    </td>
                                    <td>{$item.order_id}</td>
                                    <td class="text-center">
                                    {$item.order_status}
                                    </td>
                                    <td>
                                        {$item.update_time}
                                    </td>
                                    <td style="width: 20%">
                                        <a href="{$domain}/danh-sach-don-hang/{$item.order_id}" class="table-link">
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
                                    </td>
                                </tr>
                            {/foreach}


                        </tbody>
                    </table>
                </div>
               
            </div>
        </div>
    </div>
</div>