class Product < ActiveRecord::Base
	has_many :photos, :dependent => :destroy
	has_many :line_items
	accepts_nested_attributes_for :photos

  attr_accessible :color, :description, :model_no, :name, :price,:photos_attributes

  def self.first_pic(product_id)
  	Photo.first.data(:product_id => product_id)
  end

 
end

