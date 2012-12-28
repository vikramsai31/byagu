class Order < ActiveRecord::Base
  attr_accessible :billing_address1, :billing_address2, :billing_city, :billing_first_name, :billing_last_name, :billing_middle_name, :billing_state, :billing_zip, :cart_id, :order_no, :sales_tax, :shipping_address1, :shipping_address2, :shipping_city, :shipping_fee, :shipping_fee, :shipping_first_name, :shipping_last_name, :shipping_middle_name, :shipping_state, :shipping_zip, :total, :total, :transaction_status
end
