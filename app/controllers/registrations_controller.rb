class RegistrationsController < Devise::RegistrationsController
    # resources :users, only [:show, :edit, :update, :destroy]
    def index
    end

    def after_sign_up_path_for(resource)
        interstitial_path
    end

    def after_inactive_sign_up_path_for(resource)
        interstitial_path
    end

end
