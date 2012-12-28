# == Schema Information
#
# Table name: line_items
#
#  id         :integer          not null, primary key
#  product_id :integer
#  cart_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  quantity   :integer
#

class LineItem < ActiveRecord::Base
  belongs_to :product 
  belongs_to :cart
  #before_save :quantity
  attr_accessible :cart_id, :product_id, :quantity

  def self.get_count(current_cart)
  	if current_cart.nil?
  		current_count = 0
  	else
  	current_count = where(:cart_id => current_cart).count
  	#current_count = current_cart
  	end
  	current_count
  end

  def self.get_price(line_item_id, price)
    item = LineItem.find(line_item_id)
    item.quantity*price    
  end  

  #def quantity
   #  self.quantity = 1
  #end

  
end
