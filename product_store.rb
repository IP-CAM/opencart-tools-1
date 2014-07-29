class ProductStore < ActiveRecord::Base

	self.table_name = "product_to_store"

	has_many :products
	
end