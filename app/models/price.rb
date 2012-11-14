MOST_RECENT = 5
class Price < ActiveRecord::Base
  attr_accessible :buyer, :date, :price, :quality
  scope :most_recent, lambda { order("id desc").limit(MOST_RECENT) }
end
