class SurveyHeader < ActiveRecord::Base
  belongs_to :origins
  default_scope -> { order('created_at DESC') }	
	has_many :survey_sections

	def self.search(search, page)
		  paginate :per_page => 30, :page => page,
				       :conditions => ['name like ?', "%#{search}%"],
			         :order => 'name'
	end
end
