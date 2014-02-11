json.array!(@categories) do |category|
  json.extract! category, :id, :name, :description, :active
  json.url category_url(category, format: :json)
end
