class Product < ApplicationRecord
    has_and_belongs_to_many :orders
    attr_accessor :image_url
end
