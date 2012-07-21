class Product < ActiveRecord::Base
  attr_accessible :manufacturer_id, :name, :price
  belongs_to :manufacturer
end
