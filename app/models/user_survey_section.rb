class UserSurveySection < ActiveRecord::Base
	belongs_to :survey_sections
	belongs_to :users
end
