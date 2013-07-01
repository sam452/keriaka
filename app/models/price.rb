MOST_RECENT = 5
class Price < ActiveRecord::Base
  attr_accessible :buyer, :date, :price, :quality, :commodity_id
  scope :most_recent, lambda { order("id desc").limit(MOST_RECENT) }
  belongs_to :commodity
  
  validates :price, presence: true

  def date
  	created_at
  end

  def as_json(options)
  	{price: price, quality: quality, date: date}
  end
end
