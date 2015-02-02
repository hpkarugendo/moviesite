class Review < ActiveRecord::Base
	belongs_to :customer, :foreign_key => :poster
	validates :title, presence: true
	validates :body, presence: true
end
