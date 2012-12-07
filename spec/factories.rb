FactoryGirl.define do
  factory :commodity do
    name "corn"
  end
  
  factory :price do
    price "2"
    date { Time.now }
  end
  
  factory :commodity_with_prices, :parent => :commodity do
    after_create do |commodity|
      #1.upto(6) do
        FactoryGirl.create(:price, :commodity => commodity)
      #  sleep 2
      #end
    end
  end
end