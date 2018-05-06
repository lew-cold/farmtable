class ApplicationController < ActionController::Base
    rescue_from CanCan::AccessDenied do | exception |
    redirect_to request.referrer, alert: exception.message
    end
end
