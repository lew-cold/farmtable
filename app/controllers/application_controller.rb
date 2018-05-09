class ApplicationController < ActionController::Base
    rescue_from CanCan::AccessDenied do | exception |
    redirect_to root_path, alert: exception.message
    end

    rescue_from ActiveRecord::RecordNotFound do
        flash[:warning] = 'Resource not found.'
        redirect_back_or root_path
      end
      
    def redirect_back_or(path)
        redirect_to request.referer || path
    end

end
