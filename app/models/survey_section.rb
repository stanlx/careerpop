class SurveySection < ActiveRecord::Base
	belongs_to :survey_headers
	has_many :user_survey_sections
	has_many :questions
end
