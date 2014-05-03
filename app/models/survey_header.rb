class SurveyHeader < ActiveRecord::Base
  belongs_to :origins

	has_many :survey_sections
end
