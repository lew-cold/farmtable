class OmniauthCallbacksController < Devise::OmniauthCallbacksController

    def stripe_connect
        @user = current_user
        if @user.update_attributes({
          provider: request.env["omniauth.auth"].provider,
          uid: request.env["omniauth.auth"].uid,
          access_code: request.env["omniauth.auth"].credentials.token,
          publishable_key: request.env["omniauth.auth"].info.publishable_key
        })
          # anything else you need to do in response..
          
          if Profile.exists?(@user.id)
            redirect_to root_path
            set_flash_message(:notice, :success, :kind => "Stripe") if is_navigational_format?
          else
            redirect_to new_profile_path, :event => :authentication
            set_flash_message(:notice, :success, :kind => "Stripe") if is_navigational_format?
          end
        else
          session["devise.stripe_connect_data"] = request.env["omniauth.auth"]
          redirect_to new_user_registration_url
        end
    end
  
    def failure
      # If we do get failures we should probably handle them more explicitly than just rerouting to root. To review in the future with colo
      redirect_to root_path
    end
end
