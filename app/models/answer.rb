class Answer < ActiveRecord::Base
	belongs_to :question_options
	belongs_to :users
end
