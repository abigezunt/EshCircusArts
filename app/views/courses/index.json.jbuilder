json.array!(@courses) do |course|
  json.extract! course, :start_date, :end_date, :number_of_sessions, :price, :instructor_pay, :level, :description, :discipline
  json.url course_url(course, format: :json)
end
