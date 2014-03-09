json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :number_volunteer, :duration, :categoryID, :active
  json.url event_url(event, format: :json)
end
