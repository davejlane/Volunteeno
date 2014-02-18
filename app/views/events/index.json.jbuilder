json.array!(@events) do |event|
  json.extract! event, :id, :category, :name, :duration, :description, :number_volunteer, :active
  json.url event_url(event, format: :json)
end
