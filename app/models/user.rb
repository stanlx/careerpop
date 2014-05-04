class User < ActiveRecord::Base
	has_many :user_survey_sections
	has_many :answers
	validates :fname, presence: true, length: {maximum: 25}
  validates :lname, presence: true, length: {maximum: 30}
	VALID_EMAIL_ADDRESS = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_ADDRESS }
end
