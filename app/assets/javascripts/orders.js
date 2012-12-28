<script type="text/javascript">
function FillBilling(f) {
  if(f.billingtoo.checked == true) {
    f.order_billing_first_name.value = f.order_shipping_first_name.value;
    f.order_billing_last_name.value = f.order_shipping_last_name.value;
    f.order_billing_middle_name.value = f.order_shipping_middle_name.value;
    f.order_billing_address1.value = f.order_shipping_address1.value;
    f.order_billing_address2.value = f.order_shipping_address2.value;
    f.order_billing_city.value = f.order_shipping_city.value;
    f.order_billing_state.value = f.order_shipping_state.value;
    f.order_billing_zip.value = f.order_shipping_zip.value;
  } else {
  	 f.order_billing_first_name.value = '';
    f.order_billing_last_name.value = '';
    f.order_billing_middle_name.value = '';
    f.order_billing_address1.value = '';
    f.order_billing_address2.value = '';
    f.order_billing_city.value = '';
    f.order_billing_state.value = '';
    f.order_billing_zip.value = '';
  }

}
</script >