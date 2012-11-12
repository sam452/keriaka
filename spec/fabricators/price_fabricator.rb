Fabricator(:price) do
  price { sequence(:price) { |i| "1#{i}" } }
  quality "good"
  buyer "Joe"
  date Time.now
end
