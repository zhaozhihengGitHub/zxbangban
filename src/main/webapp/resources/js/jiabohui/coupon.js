/* 棰嗗彇浼樻儬鍒� */
var getCouponFlag = false;
function getCoupon(couponId, srcId) {
    if (getCouponFlag) return;

    var msgBox = $("#J_MsgCouponSubmit");

    msgBox.addClass("hide").find(".msg-cnt").text("");

    var mobile = base.getValue("coupon_mobile");
    var captcha = base.getValue("coupon_code");

    if (mobile.length == 0) {
        msgBox.removeClass("hide").find(".msg-cnt").text("请输入您的手机号码1");
    } else if (!base.isMobile(mobile)) {
        msgBox.removeClass("hide").find(".msg-cnt").text("请输入正确的手机号码");
    } else if (captcha.length == 0) {
        msgBox.removeClass("hide").find(".msg-cnt").text("请输入验证码");
    } else {
        getCouponFlag = true;

        $.post(baseCityUrl + 'getCoupon', {"coupon_id":couponId,"srcId":srcId,"mobile":mobile,"code":captcha}, function(data) {
            if (data.status == 1) {
                base.editModal(baseCityUrl + 'coupon/success?couponId=' + couponId, '棰嗗彇鎴愬姛', 500, 582, true);
            } else {
                alert(data.msg);
            }

            getCouponFlag = false;
        }).error(function() {getCouponFlag = false;});
    }
}

function login() {
    base.closeModal();
    base.jLogin();
}