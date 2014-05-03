json.array!(@user_survey_sections) do |user_survey_section|
  json.extract! user_survey_section, :id, :user_id, :survey_section_id, :completed_on
  json.url user_survey_section_url(user_survey_section, format: :json)
end
