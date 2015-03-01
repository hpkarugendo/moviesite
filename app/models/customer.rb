class Customer < ActiveRecord::Base
	has_secure_password
	validates_confirmation_of :password
	validates_uniqueness_of :name
	validates_uniqueness_of :email
	validates_presence_of :name
	validate :invalid_email
	def invalid_email
		unless email.include?("@")
			errors.add(:email, "Invalid email")
		end
	end
	has_many :orders
	mount_uploader :photo, PhotoUploader
end
