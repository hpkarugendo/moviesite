class Customer < ActiveRecord::Base
	has_many :reviews
	has_secure_password
	validates_uniqueness_of :name
	validates_uniqueness_of :email
	validates_presence_of :name
	validate :invalid_email
	def invalid_email
		unless email.include?("@")
			errors.add(:email, "Invalid email")
		end
	end
	mount_uploader :photo, PhotoUploader
end
