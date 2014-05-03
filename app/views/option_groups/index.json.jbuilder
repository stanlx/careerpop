json.array!(@option_groups) do |option_group|
  json.extract! option_group, :id, :option_group_name
  json.url option_group_url(option_group, format: :json)
end
