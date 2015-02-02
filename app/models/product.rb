class Product < ActiveRecord::Base
validates :disc, uniqueness: true, presence: true
end
