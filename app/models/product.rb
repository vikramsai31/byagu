# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  price       :decimal(, )
#  color       :string(255)
#  model_no    :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ActiveRecord::Base
	has_many :photos, :dependent => :destroy
	has_many :line_items
	accepts_nested_attributes_for :photos, :line_items

  attr_accessible :color, :description, :model_no, :name, :price,:photos_attributes

  def self.first_pic(product_id)
  	Photo.first.data(:product_id => product_id)
  end

 
end

