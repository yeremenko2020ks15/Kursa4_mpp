class HomeController < ApplicationController
  def index
    @products = Product.all
    @comments = Comment.all
  end

  def aboutcom
  end

  def payinfo
  end

  def contacts
  end

end
