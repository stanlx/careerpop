json.array!(@input_types) do |input_type|
  json.extract! input_type, :id, :input_type_name
  json.url input_type_url(input_type, format: :json)
end
