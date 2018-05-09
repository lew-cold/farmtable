module ApplicationHelper
    def stripe_url
        "https://connect.stripe.com/oauth/authorize?response_type=code&client_id=#{ENV['CLIENT_ID']}&scope=read_write"
    end
    def gravatar_for(user, size = 30, title = user.email)
        image_tag gravatar_image_url(user.email, size: size), title: title, class: 'img-rounded'
    end
end
