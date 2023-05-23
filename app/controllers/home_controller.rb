class HomeController < ApplicationController
  def index
    @products = Product.all
    if current_user != nil
      id = current_user.id
    end
    @cart ||= Cart.find_by(user_id: id, done: false)
  end

  def aboutcom
  end

  def payinfo
  end

  def contacts
  end

end
