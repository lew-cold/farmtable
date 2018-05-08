class ChargesController < ApplicationController
    before_action :set_item
    
   
    def create
        Stripe.api_key = ENV["SECRET_KEY"]
        # @amount = (@product.price + @product.shipping).to_i * 100
        
    
        # charge
        @amount = (@product.price + @product.shipping) * 100
        token = params[:stripeToken]
        @quantity = params[:quantity]
        @quantity = @quantity.to_i
        # application_fee = (@amount * 0.05).to_i     # 5%
        # byebug
        charge = Stripe::Charge.create({
        amount: @amount * @quantity,
        # address_line1: @profile.street_address,

        description: @product.product_name,
        currency: 'aud',
        source: token,
        receipt_email: @email,
        destination: @owner.uid
        })
        redirect_to '/success'

        rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to new_charge_path
    end
    
    def thanks
    end
    
      private
    def set_item
        @product = Product.find(params[:product_id])
        @seller = @product.user_id
        @owner = User.find(@seller)
        @buyer = User.find(current_user.id)
        @profile = Profile.find([current_user.id])
        @email = (params[:stripeEmail])
    end
   
end
