class Product < ActiveRecord::Base

	self.table_name = 'product'

	validates :image, presence: true
	validates :image, uniqueness: true

	

end