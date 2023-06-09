class HomeController < ApplicationController

    def index
        @products = Product.all
      
        @products[0].image_url = 'image2.jpg'
        @products[1].image_url = 'image3.jpg'
        @products[2].image_url = 'image4.jpg'
      end
      
end
