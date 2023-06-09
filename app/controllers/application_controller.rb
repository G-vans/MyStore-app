class ApplicationController < ActionController::Base
    before_action :authenticate_user!, :set_cart

    private

    def set_cart
        @cart = session[:cart] ||= [ ]
    end
end
