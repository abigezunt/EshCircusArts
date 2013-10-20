json.array!(@users) do |user|
  json.extract! user, :name, :bio, :role, :injuries, :photo, :emergency_contact_name, :emergency_contact_number, :email, :phone_number, :address
  json.url user_url(user, format: :json)
end
