class RegistrationsController < Devise::RegistrationsController
    # resources :users, only [:show, :edit, :update, :destroy]
    def index
    end

    def after_sign_up_path_for(resource)
        user_stripe_connect_omniauth_authorize_path
    end

    def after_inactive_sign_up_path_for(resource)
        user_stripe_connect_omniauth_authorize_path
    end

    def create
        super
        if resource.save
            resource.create_profile
        end
      end
end
