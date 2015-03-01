class ApplicationController < ActionController::Base
  include ApplicationHelper
  protect_from_forgery
  before_filter :current_cart
  def authorise
    unless signed_in?
      store_location
      redirect_to signin_path, :notice => "You must sign in to access this page"
    end
  end

  def store_location
    session[:return_to] = request.fullpath
  end

  private
  def current_cart
    cart = Cart.find_by_id(session[:cart_id])
    if cart.nil?
      cart = Cart.create
      session[:cart_id] = cart.id
    end
    cart #returns cart Object
  end
end
