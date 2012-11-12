MOST_RECENT = 5
class Price < ActiveRecord::Base
  attr_accessible :buyer, :date, :price, :quality
  scope :most_recent, lambda { order("prices.id desc limit #{MOST_RECENT}") }
end

#scope :last_week, lambda { where("created_at < ?", Time.zone.now ) }
#select * from Prices order by id desc limit 5

#sELECT "prices".* FROM "prices" ORDER BY "prices"."id" DESC LIMIT 1 <<<<<
#SELECT "prices".* FROM "prices" WHERE (id desc limit 5)