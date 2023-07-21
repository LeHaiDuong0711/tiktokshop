$(document).on("click", ".cancel-btn", function (e) {
  e.preventDefault();
order_id = $(this).data('id');
  BootstrapDialog.show({
    title: "Lý do hủy",
    message: `
    <input id="order_id" type="hidden" value=`+order_id+`>
    <select class="custom-select" id="reason_key">
    <option value="">Choose...</option>
    <option value="seller_cancel_reason_wrong_price">Lỗi định giá</option>
    <option value="seller_cancel_reason_out_of_stock">Hết hàng</option>
    <option value="seller_cancel_paid_reason_address_not_deliver">Không thể giao đến người nhận hàng</option>
  </select>`,
    buttons: [
      {
        label: " Xác nhận",
        cssClass: "btn-key btn-width cancel-order",
        action: function (dialogItself) {
          dialogItself.close();
        },
      },
    ],
  });
});

$(document).on('click','.cancel-order', function () {
    order_id = $('#order_id').val();
    cancel_reason_key = $('#reason_key option:selected').val();
    data = new FormData();
    data.append('order_id',order_id);
    data.append('cancel_reason_key',cancel_reason_key)
    _doAjaxNod("post", data, "order", "list", "cancel", true, (res) => {
                if(res.status ==200){
                    window.location.reload();
                }
            });
});
