<div class="form-login-v">
    <div class="container">
        <div class="form-content">
            <div class="form-content-left">
                <h3 class="title-l">Tạo Tài khoản</h3>
                <div class="form-action" method="POST" action="{$link}/?m=user&act=sb_register">
                {if $referral_by == ''}
                    <div class="form-group username active1">
                        <input type="text" id="referral_by" name="referral_by" class="form-control" value="">
                        <span class="name1">Mã giới thiệu (nếu có)</span>
                    </div>
                {else}
                    <input type="text" id="referral_by" name="referral_by" class="form-control hide" value="{$referral_by}">
                {/if}
                    <div class="form-group form_name active1">
                        <input type="text" id="see_name" name="see_name" class="form-control" value="{$fullname}">
                        <span class="name1">Họ & tên</span>
                    </div>
                    <div class="form-group see_email active1">
                        <input type="text" id="see_email" name="see_email" class="form-control" value="{$email}">
                        <span class="name1">Địa chỉ email</span>
                    </div>
                    <div class="form-group see_phone active1">
                        <input type="text" id="see_phone" name="see_phone" maxlength="15" class="form-control" value="{$mobile}">
                        <span class="name1">Số điện thoại</span>
                    </div>
                    <div class="form-group input-password form_password active1">
                        <input type="password" id="form_password" name="form_password" class="form-control">
                        <span class="name1">Mật khẩu</span>
                    </div>
                    <div class="form-group input-password form_re_password active1">
                        <input type="password" id="form_re_password" name="form_re_password" class="form-control">
                        <span class="name1">Xác nhận</span>
                    </div>
                    <div class="eye-password eye-password1"><i class="fa fa-eye"></i><i class="fa fa-eye-slash"></i>
                    </div>
                    <div class="clear"></div>
                    <div class="form-group">
                        <a class="a-login" href="/dang-nhap">Đăng nhập</a><button type="submit"
                            class="btn btn-key btn-width" id="btn_submit">Tạo tài khoản</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="modal_alert_dialog" class="modal fade modalAlert in" tabindex="-1" role="dialog" aria-hidden="false">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <span class="close" data-dismiss="modal" aria-label="Close">x</span>
                <h3>Thông báo</h3>
                <p id="message_alert"></p>
                <button type="button" class="close btn" data-dismiss="modal" aria-label="Close">OK</button>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $('body').on('click', '.form-login-v .form-content .form-action .form-group', function() {
        $('.form-login-v .form-content .form-action .form-group').removeClass('active');
        $(this).addClass('active');
        $(this).find('input').focus();
    });

    

    $('body').on('click', '.form-login-v .form-content .form-action .eye-password1', function() {
        $(this).addClass('eye-password2');
        $(this).removeClass('eye-password1');
        $('.input-password input').attr('type', 'text');
    });
    $('body').on('click', '.form-login-v .form-content .form-action .eye-password2', function() {
        $(this).addClass('eye-password1');
        $(this).removeClass('eye-password2');
        $('.input-password input').attr('type', 'password');
    });
</script>