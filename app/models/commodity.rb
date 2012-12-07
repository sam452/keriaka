class Commodity < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :prices
  
  before_save { |commodity| commodity.name.capitalize! }
  
  validates :name, presence: true, length: { minimum: 4 }
end
