class SupportMailer < ApplicationMailer


    def support_email
        @support = params[:support]
        mail(to: "support@farmtable.theyorkshirecoder.com", subject: "New support ticket")
    end
end
