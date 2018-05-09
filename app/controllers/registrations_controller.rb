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

    def destroy
        ActionMailer::Base.mail(from: "noreply@farmtotable.ml", to: @user.email, subject: "Your account has been deleted!", body: "Your Farm to Table Account has been deleted.  If you connected with Stripe, you will need to remove these manually from your Stripe dashboard").deliver
        resource.destroy
        Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)
        set_flash_message! :notice, :destroyed
        yield resource if block_given?
        respond_with_navigational(resource){ redirect_to after_sign_out_path_for(resource_name) }
    end

end
