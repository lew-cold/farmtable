class ChargesController < ApplicationController
    

    def create
        Stripe.api_key = ENV["SECRET_KEY"]
        # @amount = (@product.price + @product.shipping).to_i * 100
        # application_fee = (@amount * 0.05).to_i     # 5%
    
        # charge
        @amount = 100
        token = params[:stripeToken]
        charge = Stripe::Charge.create({
          amount: @amount,
        #   description: @product.product_name,
        description: 'test',
          currency: 'aud',
        #   capture: true,
          source: token,
        })
    
        # charge_params[:destination] = User.find(@product.user_id).stripe_id
        # charge_params[:application_fee] = application_fee
    
        # Stripe::Charge.create(charge_params) # return a Stripe::Charge object
    
    
    
        rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to new_charge_path
    end
    
    def thanks
    end
    
      private
    def set_item
        @product = Product.find(params[:product_id])
    end
   
end
