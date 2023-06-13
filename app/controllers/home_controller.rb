class HomeController < ApplicationController
  def index
    @products = Product.all

    if @products.present?
      @products[0].image_url = 'image2.jpg' if @products[0]
      @products[1].image_url = 'image3.jpg' if @products[1]
      @products[2].image_url = 'image4.jpg' if @products[2]
    end
  end
end
