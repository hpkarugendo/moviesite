class Customer < ActiveRecord::Base
	has_many :reviews
	has_secure_password
	validates :name, uniqueness: true
	validates :name, presence: true
	validates :email, presence: true
	validates :email, uniqueness: true
	validate :invalid_email
	def invalid_email
		unless email.include?("@")
			errors.add(:email, "Invalid email")
		end
	end
	mount_uploader :photo, PhotoUploader
end
