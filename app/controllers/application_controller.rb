class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :cart

  def cart
    # return user's shopping cart 
    # or create cart in session if one doesn't exist - initial empty array
    session[:cart] ||= []
  end
end
