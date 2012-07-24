class Product < ActiveRecord::Base
  attr_accessible :manufacturer_id, :name, :price, :image
  belongs_to :manufacturer

  mount_uploader :image, ImageUploader
end
