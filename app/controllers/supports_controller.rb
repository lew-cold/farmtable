class SupportsController < ApplicationController
    # include Recaptcha::ClientHelper
    # include Recaptcha::Verify
    before_action :set_params

    def new
        @support = Support.new
    end

    def create
        @support = Support.new support_params
        if verify_recaptcha(model: @support)
            if @support.valid?
                SupportMailer.with(support: @support).support_email.deliver_now
                flash[:notice] = "We have received your message and will be in touch soon!"
                redirect_to root_url
            else
                flash[:notice] = "There was an error sending your message. Please try again."
                redirect_to new_support_url
            end
        else
            flash[:notice] = "You need to verify you're a human!"
            redirect_to new_support_url
        end
    end


    private
    def support_params
        params.require(:support).permit(:name, :email, :phone_number, :subject, :body, :username)
    end

    def set_params
        @user = current_user
    end
end


