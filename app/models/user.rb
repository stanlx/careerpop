class User < ActiveRecord::Base
	has_secure_password
	before_save { self.email = email.downcase }
	before_create :create_remember_token
	has_many :user_survey_sections
	has_many :answers
	validates :fname, presence: true, length: {maximum: 25}
	validates :lname, presence: true, length: {maximum: 30}
	VALID_EMAIL_ADDRESS = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_ADDRESS }, 
		uniqueness: {case_sensitive: false}

	validates :password, length: { minimum: 6 }

	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.digest(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	private

	def create_remember_token
		self.remember_token = User.digest(User.new_remember_token)
	end

end
