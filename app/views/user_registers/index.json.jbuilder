json.array!(@user_registers) do |user_register|
  json.extract! user_register, :id, :name, :email, :duration_staying, :eventID, :coming
  json.url user_register_url(user_register, format: :json)
end
