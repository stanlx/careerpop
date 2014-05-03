class QuestionOption < ActiveRecord::Base
	has_many :answers

	belongs_to :option_choices
	belongs_to :questions
end
