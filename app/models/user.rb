class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	has_many :user_survey_sections
	has_many :answers
	validates :fname, presence: true, length: {maximum: 25}
  validates :lname, presence: true, length: {maximum: 30}
	VALID_EMAIL_ADDRESS = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_ADDRESS }, 
																						uniqueness: {case_sensitive: false}
  has_secure_password validations: false
	validates :password, length: { minimum: 6 }
end
