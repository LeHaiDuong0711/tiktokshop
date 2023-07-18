    <table class="wrap-banner-cate">

        <tbody>
            <tr>
                <td>
                    <div class="banner-cate">
                        <div class="img-icon">
                            <img src="public/imgs/slider-ele1.png" alt="#" />
                            <img src="public/imgs/slider-ele2.png" alt="#" />
                            <img src="public/imgs/slider-ele3.png" alt="#" />
                            <img src="public/imgs/slider-ele4.png" alt="#" />
                            <img src="public/imgs/slider-ele5.png" alt="#" />
                            <img src="public/imgs/slider-ele6.png" alt="#" />
                            <img src="public/imgs/slider-ele7.png" alt="#" />
                        </div>
                        <div class="slideshow-container">
                            {foreach from=$lSlide item=item key=key}
                                <div class="mySlides fade1">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-5 col-sm-5 col-xs-12 img visible-xs">
                                                <img src="{$item.image}" class="img-responsive" alt="{$item.name}">
                                            </div>
                                            <div class="col-md-7 col-sm-7 col-xs-12 info">
                                                <h3><span>{$item.name}</span></h3>
                                                <h4>{$item.description}</h4>
                                                <div class="view-all">
                                                    <a class="btn" href="thi-truong" title="{$item.name}">Mô tả</a>
                                                    <a class="btn" href="thi-truong" title="{$item.name}">Truy cập</a>
                                                </div>
                                            </div>
                                            <div class="col-md-5 col-sm-5 col-xs-12 img hidden-xs">
                                                <img src="{$item.image}" class="img-responsive" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            {/foreach}
                            <div class="thumb_slide">
                            {assign var=i value=1}
                            {foreach from=$lSlide item=item key=key}
                                <span class="dot" onclick="currentSlide({$i++})">{$item.name}</span>
                                {* <span class="dot" onclick="currentSlide(2)">{$item.name}</span>
                                <span class="dot" onclick="currentSlide(3)">{$item.name}</span> *}
                            {/foreach}
                            </div>
                            <a class="prev_slide hide" onclick="plusSlides(-1)"></a>
                            <a class="next_slide hide" onclick="plusSlides(1)"></a>
                        </div>
                    </div>
                </td>
            </tr>
        </tbody>
    </table>

    <script type="text/javascript">
        $('body').css('height', $(window).height());
        $(window).resize(function() {
            $('body').css('height', $(window).height());
        });
</script>