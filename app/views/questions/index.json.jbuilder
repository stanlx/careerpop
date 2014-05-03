json.array!(@questions) do |question|
  json.extract! question, :id, :survey_section_id, :input_type_id, :question_name, :question_subtext, :answer_required, :allow_multiple_answers
  json.url question_url(question, format: :json)
end
