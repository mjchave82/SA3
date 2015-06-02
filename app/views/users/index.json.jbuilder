json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :digitalproject, :digitalprojectname
  json.url user_url(user, format: :json)
end
