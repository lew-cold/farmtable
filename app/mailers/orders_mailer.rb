class OrdersMailer < ApplicationMailer

    def seller_email
        @buyer = params[:buyer]
        @product = params[:product]
        @owner = params[:seller]
        @quantity = params[:quantity]
        @amount = params[:amount]
        @token = params[:token]
        mail(to: @owner.email, subject: 'You have a new order - SEND NOW!')
    end

    def buyer_email
        @buyer = params[:buyer]
        @product = params[:product]
        @owner = params[:seller]
        @quantity = params[:quantity]
        @amount = params[:amount]
        @token = params[:token]
        mail(to: @buyer.email, subject: 'Receipt for your purchase!')
    end


end
