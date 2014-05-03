json.array!(@users) do |user|
  json.extract! user, :id, :fname, :lname, :email, :school
  json.url user_url(user, format: :json)
end
