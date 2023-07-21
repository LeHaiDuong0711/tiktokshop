<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Lý do hủy</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="input-group mb-3">
      <select class="custom-select" id="inputGroupSelect02">
        <option value="" selected>Choose...</option>
        <option value="seller_cancel_reason_wrong_price">Lỗi định giá</option>
        <option value="seller_cancel_reason_out_of_stock">Hết hàng</option>
        <option value="seller_cancel_paid_reason_address_not_deliver">Không thể giao đến người nhận hàng</option>
      </select>
    
    </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn-primary cancel-order" data-id="{$id}">Gửi</button>
      </div>
    </div>
  </div>
</div>