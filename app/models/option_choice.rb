class OptionChoice < ActiveRecord::Base
	has_many :question_options
	
	belongs_to :option_groups
end
