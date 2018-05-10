class ChargesController < ApplicationController
    before_action :set_item
    
   
    def create
        Stripe.api_key = ENV["SECRET_KEY"]
        # @amount = (@product.price + @product.shipping).to_i * 100
        
    
        # charge
        @quantity = params[:quantity]
        @quantity = @quantity.to_i
        @amount = ((@product.price) * @quantity + @product.shipping) * 100
        @amount = @amount.to_i
        @token = params[:stripeToken]
        
        application_fee = (@amount * 0.05).to_i
        charge = Stripe::Charge.create({
        amount: @amount,
        description: @product.product_name,
        currency: 'aud',
        source: @token,
        receipt_email: @email,
        :destination => {
            :amount => @amount - application_fee,
            :account => @owner.uid,
        }
        })
        OrdersMailer.with(token: @token, buyer: @buyer, product: @product, seller: @owner, quantity: @quantity, amount: @amount).buyer_email.deliver_now
        OrdersMailer.with(token: @token, buyer: @buyer, product: @product, seller: @owner, quantity: @quantity, amount: @amount).seller_email.deliver_now
        
        redirect_to '/success', notice: "Your payment token is: ", alert: @token

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
        # @profile = Profile.find(current_user)
        @email = (params[:stripeEmail])
    end
   
end
