class Commodity < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :prices
end
