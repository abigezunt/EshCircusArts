json.array!(@registrations) do |registration|
  json.extract! registration, :user_id, :course_id, :paid, :timestamps
  json.url registration_url(registration, format: :json)
end
