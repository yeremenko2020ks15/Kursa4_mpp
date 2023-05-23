require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  skip_before_action :verify_authenticity_token, if: -> {controller_name == 'sessions'}

  before_action :initialize_cart
  respond_to :html, :json


  def initialize_cart
    if user_signed_in?
      id = current_user.id

      @cart ||= Cart.find_by(user_id: id, done: false)

      if @cart.nil?
        @cart = Cart.create(user_id: id, done: false)
        session[:cart_id] = @cart.id
      end
    end
  end


end
