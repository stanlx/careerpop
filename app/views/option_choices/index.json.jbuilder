json.array!(@option_choices) do |option_choice|
  json.extract! option_choice, :id, :option_group_id, :option_choice_name
  json.url option_choice_url(option_choice, format: :json)
end
