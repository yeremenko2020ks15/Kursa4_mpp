class ApplicationController < ActionController::Base
  before_action :set_render_cart
  before_action :initialize_cart
  respond_to :html, :json

  def set_render_cart
    @render_cart = true
  end

  def initialize_cart
    if user_signed_in?
      id = current_user.id
    else
      id = 1
    end

    if id != 1
      @cart ||= Cart.find_by(user_id: id)
    else
      @cart ||= Cart.find_by(id: session[:cart_id])
    end

      if @cart.nil?
        @cart = Cart.create(user_id: id)
        session[:cart_id] = @cart.id
      end
  end

end
