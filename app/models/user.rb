class User < ActiveRecord::Base
	has_many :user_survey_sections
	has_many :answers
end
