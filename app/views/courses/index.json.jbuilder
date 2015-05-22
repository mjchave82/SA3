json.array!(@courses) do |course|
  json.extract! course, :id, :title, :overview, :duration
  json.url course_url(course, format: :json)
end
