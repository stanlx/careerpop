class SurveyHeader < ActiveRecord::Base
  belongs_to :origins
  default_scope -> { order('created_at DESC') }
	has_many :survey_sections
end
