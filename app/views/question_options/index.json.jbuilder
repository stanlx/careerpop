json.array!(@question_options) do |question_option|
  json.extract! question_option, :id, :question_id, :option_choice_id
  json.url question_option_url(question_option, format: :json)
end
