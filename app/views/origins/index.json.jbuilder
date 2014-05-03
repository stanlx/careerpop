json.array!(@origins) do |origin|
  json.extract! origin, :id, :name, :source
  json.url origin_url(origin, format: :json)
end
