class Customer < ActiveRecord::Base
	has_many :reviews
	has_secure_password
	validates :name, uniqueness: true
end
