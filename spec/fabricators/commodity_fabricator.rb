Fabricator(:commodity) do
  name { sequence(:name) { |i| "commod-#{i}" } }
  description "description text here"
end
