require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { billing_address1: @order.billing_address1, billing_address2: @order.billing_address2, billing_city: @order.billing_city, billing_first_name: @order.billing_first_name, billing_last_name: @order.billing_last_name, billing_middle_name: @order.billing_middle_name, billing_state: @order.billing_state, billing_zip: @order.billing_zip, cart_id: @order.cart_id, order_no: @order.order_no, sales_tax: @order.sales_tax, shipping_address1: @order.shipping_address1, shipping_address2: @order.shipping_address2, shipping_city: @order.shipping_city, shipping_fee: @order.shipping_fee, shipping_fee: @order.shipping_fee, shipping_first_name: @order.shipping_first_name, shipping_last_name: @order.shipping_last_name, shipping_middle_name: @order.shipping_middle_name, shipping_state: @order.shipping_state, shipping_zip: @order.shipping_zip, total: @order.total, total: @order.total, transaction_status: @order.transaction_status }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    put :update, id: @order, order: { billing_address1: @order.billing_address1, billing_address2: @order.billing_address2, billing_city: @order.billing_city, billing_first_name: @order.billing_first_name, billing_last_name: @order.billing_last_name, billing_middle_name: @order.billing_middle_name, billing_state: @order.billing_state, billing_zip: @order.billing_zip, cart_id: @order.cart_id, order_no: @order.order_no, sales_tax: @order.sales_tax, shipping_address1: @order.shipping_address1, shipping_address2: @order.shipping_address2, shipping_city: @order.shipping_city, shipping_fee: @order.shipping_fee, shipping_fee: @order.shipping_fee, shipping_first_name: @order.shipping_first_name, shipping_last_name: @order.shipping_last_name, shipping_middle_name: @order.shipping_middle_name, shipping_state: @order.shipping_state, shipping_zip: @order.shipping_zip, total: @order.total, total: @order.total, transaction_status: @order.transaction_status }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
