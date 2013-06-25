FactoryGirl.define do
  factory :commodity do
    name "corn"
  end
  
  factory :price do
    price "2"
    date { Time.now }
  end
  
  factory :commodity_with_prices do
    # factory :commodity do

    # after_build do |commodity|
    #   commodity.prices << FactoryGirl.build(:price, commodity: commodity)
      #user.photos << FactoryGirl.build(:photo, user: user)
      #1.upto(6) do
        #FactoryGirl.create(:price, :commodity => commodity)
      #  sleep 2
      # end
    # end
  end

  factory :user do
    email 'example@example.com'
    password 'changeme'
    password_confirmation 'changeme'
    # required if the Devise Confirmable module is used
    # confirmed_at Time.now
  end

end