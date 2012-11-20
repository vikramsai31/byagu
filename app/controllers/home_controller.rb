class HomeController < ApplicationController
  def index
  	@product = Product.all
  	#@photo = Product.photos.first(:product_id)
  end
end
