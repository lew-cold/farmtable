class OrdersMailer < ApplicationMailer

    def seller_email
        @buyer = params[:buyer]
        @product = params[:product]
        @owner = params[:seller]
        @url  = 'http://example.com/login'
        mail(to: @owner.email, subject: 'You have a new order!')
    end

    def buyer_email
        @buyer = params[:buyer]
        @product = params[:product]
        @owner = params[:seller]
        mail(to: @buyer.email, subject: 'Receipt for your purchase!')
    end


end
