class Manufacturer < ActiveRecord::Base
  attr_accessible :name
  has_many :products

  def full_name
    name << "full name"
  end
end
