json.array!(@survey_headers) do |survey_header|
  json.extract! survey_header, :id, :survey_name, :instructions, :other_header_info
  json.url survey_header_url(survey_header, format: :json)
end
