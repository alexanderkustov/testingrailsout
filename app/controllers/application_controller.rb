class ApplicationController < ActionController::Base
  protect_from_forgery

before_filter :authenticate

protected
def authenticate
  authenticate_or_request_with_http_basic do |username, password|
    username == "decathlon" && password == "senha123"
  end
end

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
