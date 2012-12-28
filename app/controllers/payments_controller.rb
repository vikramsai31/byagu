class PaymentsController < ApplicationController
	def new
		@payment = Payment.new(params[:payment])
	end
	
	def create 
		@payment = Payment.new(params[:payment])
		if @payment.save_with_payment
			redirect_to @payment, :notice => 'Thank you for subscribing'
		else
			render :new
		end
	 end
end
