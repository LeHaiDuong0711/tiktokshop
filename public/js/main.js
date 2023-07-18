$(window).scroll(function() {
    if ($(this).scrollTop() > 100) {
        $('.header-cate').addClass('fixed');
        $('.height-header-cate').show();
    } else {
        $('.header-cate').removeClass('fixed');
        $('.height-header-cate').hide();
    }
    if ($(this).scrollTop() > 150) {
        $('.header-cate').addClass('fixed1');
    } else {
        $('.header-cate').removeClass('fixed1');
    }
});

$('body').on('click', '.wrap-menu .menu-left', function() {
    $(this).addClass('active');
    $('.overlay-menu-left').fadeIn();
});
$('body').on('click', '.wrap-menu .menu-left>.menu-left-item>ul>li.li-sub', function() {
    $('.menu-left-item1').addClass('n_active');
    $('.menu-left-item2').addClass('active');
});
$('body').on('click', '.wrap-menu .menu-left>.menu-left-item>ul>li.back', function() {
    $('.menu-left-item1').removeClass('n_active');
    $('.menu-left-item2').removeClass('active');
});
$('body').on('click', '.overlay-menu-left, .form-login-menu>.form-content>span.close', function() {
    $('.wrap-menu .menu-left').removeClass('active');
    $('.form-login-menu').removeClass('active');
    $('.overlay-menu-left').fadeOut();
});
/**/
$('body').on('click', '.wrap-menu .menu-right > span.gradient-btn', function() {
    $('.form-login-menu').toggleClass('active');
    $('.overlay-menu-left').toggle();
});
$('body').on('click', '.wrap-menu .menu-right1', function() {
    $(this).toggleClass('active');
});
/**/

$('body').on('click', '.menu-left-home .menu-icon', function() {
    $(this).parent().toggleClass('active');
});
/**/
$('body').on('click', '.btn-form-login', function() {
    $data_name = $(this).attr('data-name');
    $('.form-login-menu .form-content').hide();
    $('.form-login-menu .form-content.'+$data_name).fadeIn();
});
if ($('body').find('.cate-news6').length > 0) {
    $(".cate-news6 .iframe").owlCarousel({
        navigation: true,
        autoPlay: 20000,
        navigationText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        items: 6,
        itemsDesktop: [1199, 6],
        itemsDesktopSmall: [979, 5],
        itemsTabletSmall: [864, 4],
        itemsTablet: [768, 3],
        itemsMobile: [479, 3]
    });
    $('.cate-news6 .iframe .item').removeClass('col-md-2');
}
if ($('body').find('.cate-news2').length > 0) {
    $(".cate-news2 .iframe").owlCarousel({
        navigation: true,
        autoPlay: 20000,
        navigationText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        items: 2,
        itemsDesktop: [1199, 2],
        itemsDesktopSmall: [979, 2],
        itemsTabletSmall: [864, 2],
        itemsTablet: [768, 2],
        itemsMobile: [479, 2]
    });
    $('.cate-news2 .iframe .item').removeClass('col-md-6');
}
if ($('.flexslider').length > 0) {
    $('.flexslider').flexslider({
        animation: "fade",
        slideshow: true,
        controlNav: true,
        directionNav: false,
        slideshowSpeed: 8000,
        animationSpeed: 1000,
        pauseOnHover: true,
        start: function(slider) {
            $('body').removeClass('loading');
        }
    });
}
if ($('.mySlides').length > 0) {
    var slideIndex = 1;
    showSlides(slideIndex);

    // Next/previous controls
    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    // Thumbnail image controls
    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        if (n > slides.length) { slideIndex = 1 }
        if (n < 1) { slideIndex = slides.length }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
    }
}
setInterval(function(){
    $('.next_slide').trigger('click');
}, 10000);