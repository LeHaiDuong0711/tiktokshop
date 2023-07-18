<section class="block-news news">
    <div class="container">
        <div class="item-cate-product no-icon">
            <ul class="hide">
                <li><a href="#" title="Kinh doanh online">Kinh doanh online</a></li>
                <li><a href="#" title="#">Nhận định thị trường</a></li>
                <li><a href="#" title="Xu hướng">Xu hướng</a></li>
                <li><a href="#" title="Câu chuyện thành công">Câu chuyện thành công</a></li>
                <li><a href="#" title="Xây dựng thương hiệu">Xây dựng thương hiệu</a></li>
                <li><a href="#" title="Phát triển đội ngũ">Phát triển đội ngũ</a></li>
                <li><a href="#" title="Tin tức mỹ phẩm, làm đẹp">Tin tức mỹ phẩm, làm đẹp</a></li>
                <li><a href="#" title="Thiết kế website">Thiết kế website</a></li>
            </ul>
            <ul>
                {foreach from=$cat item=item key=key}
                    <li><a href="/{$item.link_url}-cn{$item.id}" title="{$item.meta_title}">{$item.name}</a></li>
                {/foreach}
            </ul>
        </div>
        <div class="row">
            <div class="col-md-9 col-sm-12 col-xs-12">
                <div class="item-chart1">
                    <div class="block-title">
                        <h1 class="title"><a title="#"><img src="{$domain}/public/imgs/cate.png" />{$data.category.name}</a></h1>
                        <div class="clear"></div>
                    </div>
                    <div class="block-content">
                        <div class="row">
                            {foreach from=$data.l item=item key=key}
                                <div class="col-md-12 col-sm-12 col-xs-12 wrap-item">
                                    <div class="item">
                                        <div class="img">
                                            <a href="/{$item.link_url}-dn{$item.id}" title="{$item.title}">
                                                <img src="{if $item.avatar == ''}/images/no_image.png{else}{$item.avatar}{/if}"
                                                    alt="{$item.title}">
                                            </a>
                                        </div>
                                        <div class="wrap-info">
                                            <h3><a href="/{$item.link_url}-dn{$item.id}"
                                                    title="{$item.title}">{$item.title}</a></h3>
                                            <div class="time">
                                                <span><i class="fa fa-clock-o"
                                                        aria-hidden="true"></i>{$item.created_at|date_format:"H:i d/m/Y"}</span>
                                                <span><i class="fa fa-commenting-o" aria-hidden="true"></i> Lượt
                                                    xem</span>
                                            </div>
                                            <div class="info">{$item.short_description}</div>
                                        </div>
                                    </div>
                                </div>
                            {/foreach}
                        </div>
                        <div class="row hide">
                            <div class="col-md-12 col-sm-12 col-xs-12 wrap-item">
                                <div class="item">
                                    <div class="img">
                                        <a href="news-detail" title="#">
                                            <img src="public/imgs/news1.jpeg" alt="#">
                                        </a>
                                    </div>
                                    <div class="wrap-info">
                                        <h3><a href="news-detail" title="#">Góc nhìn kỹ thuật phiên giao dịch chứng
                                                khoán ngày 7/3: Giằng co, tích lũy chờ cơ hội bứt phá</a></h3>
                                        <div class="time">
                                            <span><i class="fa fa-clock-o" aria-hidden="true"></i>09:22 AM
                                                18/09/2017</span>
                                            <span><i class="fa fa-commenting-o" aria-hidden="true"></i> 482 Lượt
                                                xem</span>
                                        </div>
                                        <div class="info">Với việc xu hướng thị trường vẫn đang là đi ngang và nhóm
                                            ngành dẫn dắt chưa quá rõ ràng, VN-Index dự báo sẽ chưa thể vượt ngay vùng
                                            kháng cự đỉnh thời đại đã thiết lập tại 1.535 điểm.</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12 wrap-item">
                                <div class="item">
                                    <div class="img">
                                        <a href="news-detail" title="#">
                                            <img src="public/imgs/news2.jpeg" alt="#">
                                            <i class="fa fa-video-camera" aria-hidden="true"></i>
                                        </a>
                                    </div>
                                    <div class="wrap-info">
                                        <h3><a href="news-detail" title="#"><i class="fa fa-video-camera"
                                                    aria-hidden="true"></i>Góc nhìn chuyên gia tuần mới: Tiếp tục đặt
                                                cược vào cổ phiếu thép, dầu khí?</a></h3>
                                        <div class="time">
                                            <span><i class="fa fa-clock-o" aria-hidden="true"></i>04:00 PM
                                                22/08/2017</span>
                                            <span><i class="fa fa-commenting-o" aria-hidden="true"></i> 645 Lượt
                                                xem</span>
                                        </div>
                                        <div class="info">Nhóm cổ phiếu hàng hóa cơ bản như thép, dầu khí, phân bón tăng
                                            mạnh và thu hút chú ý lớn của thị trường tuần qua khi giá nguyên vật liệu
                                            thế giới tăng mạnh. Liệu có nên tiếp tục đặt cược vào các nhóm cổ phiếu này?
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12 wrap-item">
                                <div class="item">
                                    <div class="img">
                                        <a href="news-detail" title="#">
                                            <img src="public/imgs/news3.jpeg" alt="#">
                                        </a>
                                    </div>
                                    <div class="wrap-info">
                                        <h3><a href="news-detail" title="#">Nhận định thị trường phiên giao dịch chứng
                                                khoán ngày 7/3: Canh mua nhóm cổ phiếu hàng hóa cơ bản</a></h3>
                                        <div class="time">
                                            <span><i class="fa fa-clock-o" aria-hidden="true"></i>04:00 PM
                                                22/08/2017</span>
                                            <span><i class="fa fa-commenting-o" aria-hidden="true"></i> 509 Lượt
                                                xem</span>
                                        </div>
                                        <div class="info">Dù chỉ số đi ngang nhưng đã có nhiều nhóm cổ phiếu đã vượt
                                            đỉnh kể từ đầu năm. Với thanh khoản đã tăng như trong tuần này, nhiều khả
                                            năng thị trường sẽ có cơ hội kiểm định lại vùng đỉnh cũ ở 1.536 điểm trong
                                            tuần sau.</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12 wrap-item">
                                <div class="item">
                                    <div class="img">
                                        <a href="news-detail" title="#">
                                            <img src="public/imgs/news4.jpeg" alt="#">
                                        </a>
                                    </div>
                                    <div class="wrap-info">
                                        <h3><a href="news-detail" title="#">SSI Research điểm tên 8 cổ phiếu đáng “xuống
                                                tiền” trong tháng 3</a></h3>
                                        <div class="time">
                                            <span><i class="fa fa-clock-o" aria-hidden="true"></i>04:00 PM
                                                22/08/2017</span>
                                            <span><i class="fa fa-commenting-o" aria-hidden="true"></i> 488 Lượt
                                                xem</span>
                                        </div>
                                        <div class="info">Mới đây, nhóm chuyên gia phân tích đến từ SSI Research đã thực
                                            hiện Báo cáo Chiến lược Thị trường tháng 3/2022 và điểm tên 8 cổ phiếu giàu
                                            tiềm năng để đầu tư.</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12 wrap-item">
                                <div class="item">
                                    <div class="img">
                                        <a href="news-detail" title="#" class="img">
                                            <img src="public/imgs/news5.jpeg" alt="#">
                                        </a>
                                    </div>
                                    <div class="wrap-info">
                                        <h3><a href="news-detail" title="#">Thế giới nhiều biến động, cơ hội nào cho nhà
                                                đầu tư?</a></h3>
                                        <div class="time">
                                            <span><i class="fa fa-clock-o" aria-hidden="true"></i>04:00 PM
                                                22/08/2017</span>
                                            <span><i class="fa fa-commenting-o" aria-hidden="true"></i> 563 Lượt
                                                xem</span>
                                        </div>
                                        <div class="info">Tâm lý cẩn trọng là cần thiết, nhưng nhà đầu tư cũng không nên
                                            để điều này “che khuất” khả năng nắm bắt các cơ hội trong giai đoạn mà thế
                                            giới có thật nhiều biến động.</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12 wrap-item">
                                <div class="item">
                                    <div class="img">
                                        <a href="news-detail" title="#">
                                            <img src="public/imgs/news6.jpeg" alt="#">
                                        </a>
                                    </div>
                                    <div class="wrap-info">
                                        <h3><a href="news-detail" title="#">Thị trường còn nhiều hàng tốt nhưng tạm ưu
                                                tiên quản trị rủi ro</a></h3>
                                        <div class="time">
                                            <span><i class="fa fa-clock-o" aria-hidden="true"></i>04:00 PM
                                                22/08/2017</span>
                                            <span><i class="fa fa-commenting-o" aria-hidden="true"></i> 490 Lượt
                                                xem</span>
                                        </div>
                                        <div class="info">Nhiều thành viên thị trường đều cho rằng, thời điểm hiện tại,
                                            quản trị rủi ro quan trọng hơn kỳ vọng kiếm lợi nhuận.</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12 wrap-item">
                                <div class="item">
                                    <div class="img">
                                        <a href="news-detail" title="#">
                                            <img src="public/imgs/news1.jpeg" alt="#">
                                            <i class="fa fa-picture-o" aria-hidden="true"></i>
                                        </a>
                                    </div>
                                    <div class="wrap-info">
                                        <h3><a href="news-detail" title="#"><i class="fa fa-picture-o"
                                                    aria-hidden="true"></i>Góc nhìn kỹ thuật phiên giao dịch chứng khoán
                                                ngày 7/3: Giằng co, tích lũy chờ cơ hội bứt phá</a></h3>
                                        <div class="time">
                                            <span><i class="fa fa-clock-o" aria-hidden="true"></i>09:22 AM
                                                18/09/2017</span>
                                            <span><i class="fa fa-commenting-o" aria-hidden="true"></i> 482 Lượt
                                                xem</span>
                                        </div>
                                        <div class="info">Với việc xu hướng thị trường vẫn đang là đi ngang và nhóm
                                            ngành dẫn dắt chưa quá rõ ràng, VN-Index dự báo sẽ chưa thể vượt ngay vùng
                                            kháng cự đỉnh thời đại đã thiết lập tại 1.535 điểm.</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12 wrap-item">
                                <div class="item">
                                    <div class="img">
                                        <a href="news-detail" title="#">
                                            <img src="public/imgs/news2.jpeg" alt="#">
                                            <i class="fa fa-video-camera" aria-hidden="true"></i>
                                        </a>
                                    </div>
                                    <div class="wrap-info">
                                        <h3><a href="news-detail" title="#"><i class="fa fa-video-camera"
                                                    aria-hidden="true"></i>Góc nhìn chuyên gia tuần mới: Tiếp tục đặt
                                                cược vào cổ phiếu thép, dầu khí?</a></h3>
                                        <div class="time">
                                            <span><i class="fa fa-clock-o" aria-hidden="true"></i>04:00 PM
                                                22/08/2017</span>
                                            <span><i class="fa fa-commenting-o" aria-hidden="true"></i> 645 Lượt
                                                xem</span>
                                        </div>
                                        <div class="info">Nhóm cổ phiếu hàng hóa cơ bản như thép, dầu khí, phân bón tăng
                                            mạnh và thu hút chú ý lớn của thị trường tuần qua khi giá nguyên vật liệu
                                            thế giới tăng mạnh. Liệu có nên tiếp tục đặt cược vào các nhóm cổ phiếu này?
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12 wrap-item">
                                <div class="item">
                                    <div class="img">
                                        <a href="news-detail" title="#">
                                            <img src="public/imgs/news3.jpeg" alt="#">
                                        </a>
                                    </div>
                                    <div class="wrap-info">
                                        <h3><a href="news-detail" title="#">Nhận định thị trường phiên giao dịch chứng
                                                khoán ngày 7/3: Canh mua nhóm cổ phiếu hàng hóa cơ bản</a></h3>
                                        <div class="time">
                                            <span><i class="fa fa-clock-o" aria-hidden="true"></i>04:00 PM
                                                22/08/2017</span>
                                            <span><i class="fa fa-commenting-o" aria-hidden="true"></i> 509 Lượt
                                                xem</span>
                                        </div>
                                        <div class="info">Dù chỉ số đi ngang nhưng đã có nhiều nhóm cổ phiếu đã vượt
                                            đỉnh kể từ đầu năm. Với thanh khoản đã tăng như trong tuần này, nhiều khả
                                            năng thị trường sẽ có cơ hội kiểm định lại vùng đỉnh cũ ở 1.536 điểm trong
                                            tuần sau.</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12 wrap-item">
                                <div class="item">
                                    <div class="img">
                                        <a href="news-detail" title="#">
                                            <img src="public/imgs/news4.jpeg" alt="#    ">
                                        </a>
                                    </div>
                                    <div class="wrap-info">
                                        <h3><a href="news-detail" title="#">SSI Research điểm tên 8 cổ phiếu đáng “xuống
                                                tiền” trong tháng 3</a></h3>
                                        <div class="time">
                                            <span><i class="fa fa-clock-o" aria-hidden="true"></i>04:00 PM
                                                22/08/2017</span>
                                            <span><i class="fa fa-commenting-o" aria-hidden="true"></i> 488 Lượt
                                                xem</span>
                                        </div>
                                        <div class="info">Mới đây, nhóm chuyên gia phân tích đến từ SSI Research đã thực
                                            hiện Báo cáo Chiến lược Thị trường tháng 3/2022 và điểm tên 8 cổ phiếu giàu
                                            tiềm năng để đầu tư.</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12 wrap-item">
                                <div class="item">
                                    <div class="img">
                                        <a href="news-detail" title="#">
                                            <img src="public/imgs/news5.jpeg" alt="#">
                                        </a>
                                    </div>
                                    <div class="wrap-info">
                                        <h3><a href="news-detail" title="#">Thế giới nhiều biến động, cơ hội nào cho nhà
                                                đầu tư?</a></h3>
                                        <div class="time">
                                            <span><i class="fa fa-clock-o" aria-hidden="true"></i>04:00 PM
                                                22/08/2017</span>
                                            <span><i class="fa fa-commenting-o" aria-hidden="true"></i> 563 Lượt
                                                xem</span>
                                        </div>
                                        <div class="info">Tâm lý cẩn trọng là cần thiết, nhưng nhà đầu tư cũng không nên
                                            để điều này “che khuất” khả năng nắm bắt các cơ hội trong giai đoạn mà thế
                                            giới có thật nhiều biến động.</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12 wrap-item">
                                <div class="item">
                                    <div class="img">
                                        <a href="news-detail" title="#">
                                            <img src="public/imgs/news6.jpeg" alt="#">
                                        </a>
                                    </div>
                                    <div class="wrap-info">
                                        <h3><a href="news-detail" title="#">Thị trường còn nhiều hàng tốt nhưng tạm ưu
                                                tiên quản trị rủi ro</a></h3>
                                        <div class="time">
                                            <span><i class="fa fa-clock-o" aria-hidden="true"></i>04:00 PM
                                                22/08/2017</span>
                                            <span><i class="fa fa-commenting-o" aria-hidden="true"></i> 490 Lượt
                                                xem</span>
                                        </div>
                                        <div class="info">Nhiều thành viên thị trường đều cho rằng, thời điểm hiện tại,
                                            quản trị rủi ro quan trọng hơn kỳ vọng kiếm lợi nhuận.</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="text-left">
                    <ul class="pagination m-n">
                        {if $data.total_page > 0}
                            <li class="disabled"><a href="">Trước</a></li>
                            {for $foo=1 to $data.total_page}
                                <li class="{if $foo == $data.page}active{/if}" id="page_change" data_page="{$foo}"
                                    link="{$data.category.link_url}/{$foo}">
                                    <span>{$foo}</span>
                                </li>
                            {/for}
                        {/if}
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
    $('body').on('click', '#page_change', function() { //gọi hàm save thông tin giới thiệu (tùngcode-26/08/2021)
        var link = $(this).attr('link');
        window.location = domain + '/' + link;
    });
</script>