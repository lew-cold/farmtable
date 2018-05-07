class ChargesController < ApplicationController
    
   
#     def create
#         Stripe.api_key = ENV["SECRET_KEY"]
#         # @amount = (@product.price + @product.shipping).to_i * 100
#         # application_fee = (@amount * 0.05).to_i     # 5%
    
#         # charge
#         @product = Product.find_by(params[:product_id])
#         @amount = (@product.price + @product.shipping) * 100
#         token = params[:stripeToken]
#         charge = Stripe::Charge.create({
#         amount: @amount,
#         description: 'Farm-To-Table pty',
#         currency: 'aud',
#         source: 'tok_visa'
#         destination: { account: "{CONNECTED_STRIPE_ACCOUNT_ID" }
#         })
#         rescue Stripe::CardError => e
#         flash[:error] = e.message
#         redirect_to new_charge_path
#     end
    
#     def thanks
#     end
    
#       private
#     def set_item
#         @product = Product.find(params[:product_id])
#     end
   
end
