class ApplicationController < ActionController::Base
  protect_from_forgery


helper_method :admin?

protected

def admin?
    session[:password] == "secret"
end

def authorize
  unless admin?
    flash[:error] = "unauthorized access"
    redirect_to home_path
    false
  end
end

end
