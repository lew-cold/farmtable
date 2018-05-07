class ChargesController < ApplicationController



    def create
        @amount = (@product.price + @product.shipping).to_i * 100
        # application_fee = (@amount * 0.05).to_i     # 5%
    
        customer = Stripe::Customer.create(
          email: params[:stripeEmail],
          source: params[:stripeToken]
        )
    
        # charge
        charge_params = {
          customer: user.id,
          amount: @amount,
          description: @product.product_name,
          currency: 'aud',
          capture: true
        }
    
        charge_params[:destination] = User.find(@product.user_id).stripe_id
        # charge_params[:application_fee] = application_fee
    
        Stripe::Charge.create(charge_params) # return a Stripe::Charge object
    
    
    
        rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to new_charge_path
      end
    
      def thanks
      end
    
      private
      def set_item
        @book = Product.find(params[:product_id])
      end
    end
   
end
