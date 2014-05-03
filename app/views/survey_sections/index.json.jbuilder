json.array!(@survey_sections) do |survey_section|
  json.extract! survey_section, :id, :survey_header_id, :section_name, :section_title, :section_subheading, :section_required
  json.url survey_section_url(survey_section, format: :json)
end
