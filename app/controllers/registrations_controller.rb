class RegistrationsController < Devise::RegistrationsController

    def after_sign_up_path_for(resource)
        new_profile_path
    end

    def create
        super
        if resource.save
            resource.create_profile
        end
      end
end
