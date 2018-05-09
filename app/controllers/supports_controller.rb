class SupportsController < ApplicationController



    def new
        @support = Support.new
    end
    def create
        @support = Support.new support_params
            if @support.valid?
                SupportMailer.with(@support).support_email.deliver_now
                redirect_to root_path
                flash[:notice] = "We have received your message and will be in touch soon!"
            else
                flash[:notice] = "There was an error sending your message. Please try again."
                render :new
            end
    end


    private
    def support_params
        params.require(:support).permit(:name, :email, :phone_number, :subject, :body)
    end
end


