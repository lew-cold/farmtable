class SupportMailer < ApplicationMailer


    def support_email
        mail(to: "lewis@theyorkshirecoder.com", subject: "New support ticket")
    end
end
