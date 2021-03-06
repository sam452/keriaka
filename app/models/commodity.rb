require_relative 'commodity_name_validator'

class Commodity < ActiveRecord::Base
  attr_accessible :description, :name, :prices_attributes
  has_many :prices
  accepts_nested_attributes_for :prices
  
  before_save { |commodity| commodity.name.capitalize! }
  
  validates :name, presence: true, length: { minimum: 4 }
  
  validate :commodity_name_validations
  
  def commodity_name_validations
    validates_with CommodityNameValidator
  end
end
