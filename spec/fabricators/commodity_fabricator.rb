#Fabricator(:commodity) do
#  name { sequence(:name) { |i| "commod-#{i}" } }
#  description "description text here"
#end

Fabricator(:commodity) do
  #prices(count: 6) { |attrs, i| Fabricate(:commodity, price: i) }
  name "maize"
  description "white"
end