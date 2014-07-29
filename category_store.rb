class CategoryStore < ActiveRecord::Base

	self.table_name = "category_to_store"

	has_many :products
	
end