class HomeController < ApplicationController
  def index
    @products = Product.all
    @comments = Comment.all
  end

end
