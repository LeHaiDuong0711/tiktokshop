<div class="form-login-v">
    <div class="container">
        <div class="form-content form-content-login">
            <h3 class="title-l">Đăng nhập</h3>
            <form method="POST" name="" class="form-action" action="{$domain}/?m=home&act=sb_login">
                <div class="form-group username active1">
                    <input type="text" id="username" name="username" class="form-control">
                    <span class="name1">Số điện thoại hoặc địa chỉ email</span>
                </div>
                <div class="form-group form_password active1">
                    <input type="password" id="password" name="password" class="form-control">
                    <span class="name1">Mật khẩu</span>
                </div>
                {* <p class="link-forgot text-right hide"><a href="/quen-mat-khau">Quên mật khẩu?</a></p> *}
                <div class="form-group">
                    {* <a class="a-login" href="/dang-ky-tai-khoan">Tạo tài khoản</a> *}
                    {* <a style="cursor: pointer;" class="btn btn-key btn-width" id="btn_submit">Đăng nhập</a> *}
                    <input type="submit" class="btn btn-key btn-width" name="submit" value="{$lang.login}" style="height: 38px;"/>
                </div>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript">
    $('body').on('click', '.form-login-v .form-content .form-action .form-group', function(){
        $('.form-login-v .form-content .form-action .form-group').removeClass('active');
        $(this).addClass('active');
    });
</script>