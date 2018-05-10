class PagesController < ApplicationController
    def index
        render :file => 'public/index.html'
    end
    def interstitial 
    end

    def success
        @buyer = params[:buyer]
        @product = params[:product]
        @owner = params[:seller]
        @quantity = params[:quantity]
        @amount = params[:amount]
        @token = params[:token]
    end
    
end
