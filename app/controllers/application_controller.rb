class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  before_action :set_customer
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name,:surname, :customer_id, :email, :password )}
  end
  
  def set_customer
    @standard_customer = Customer.find(2)
  end
  
end
