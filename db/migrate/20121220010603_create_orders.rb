class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :cart_id
      t.string :shipping_first_name
      t.string :shipping_last_name
      t.string :shipping_middle_name
      t.string :shipping_address1
      t.string :shipping_address2
      t.string :shipping_city
      t.string :shipping_state
      t.integer :shipping_zip
      t.string :billing_first_name
      t.string :billing_last_name
      t.string :billing_middle_name
      t.string :billing_address1
      t.string :billing_address2
      t.string :billing_city
      t.string :billing_state
      t.integer :billing_zip
      t.string :order_no
      t.string :transaction_status,:default => 'F'
      t.integer :total,:default => 0
      t.integer :shipping_fee,:default => 0
      t.integer :sales_tax,:default => 0

      t.timestamps
    end
  end
end
