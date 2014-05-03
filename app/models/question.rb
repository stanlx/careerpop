class Question < ActiveRecord::Base
	has_many :question_options
	belongs_to :survey_sections
	belongs_to :input_types
	belongs_to :option_groups
end
