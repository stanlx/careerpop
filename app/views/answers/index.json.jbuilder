json.array!(@answers) do |answer|
  json.extract! answer, :id, :user_id, :question_option_id, :answer_number, :answer_text, :answer_yn
  json.url answer_url(answer, format: :json)
end
