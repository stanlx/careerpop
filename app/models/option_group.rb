class OptionGroup < ActiveRecord::Base
	has_many :questions
	has_many :option_choices
end
