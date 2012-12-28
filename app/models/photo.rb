# == Schema Information
#
# Table name: photos
#
#  id                :integer          not null, primary key
#  product_id        :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  data_file_name    :string(255)
#  data_content_type :string(255)
#  data_file_size    :integer
#  data_updated_at   :datetime
#

class Photo < ActiveRecord::Base
	belongs_to :product
	has_attached_file :data, :styles => { :thumb => "100x100#", :medium => "300x300#", :large => "600x600>" },
	:url  => "/assets/products/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

validates_attachment_presence :data
#validates_attachment_size :data, :less_than => 5.megabytes
validates_attachment_content_type :data, :content_type => ['image/jpeg', 'image/png']

  attr_accessible :product_id,:data
end
