json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :date, :location, :status
  json.url schedule_url(schedule, format: :json)
end
