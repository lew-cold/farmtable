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
        byebug
        charge = Stripe::Charge.create({
        amount: @amount * @quantity,
        description: @product.product_name,
        currency: 'aud',
        source: token,
        receipt_email: @email,
        destination: @owner.uid
        })

        OrdersMailer.with(buyer: @buyer, product: @product, seller: @owner).buyer_email.deliver_now
        OrdersMailer.with(seller: @owner, product: @product, buyer: @buyer).seller_email.deliver_now
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
        @buyer = current_user
        @profile = Profile.find(@buyer.id)
        @email = (params[:stripeEmail])
    end
   
end
