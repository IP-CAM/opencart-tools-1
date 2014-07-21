class CategoryPath < ActiveRecord::Base
	
	self.table_name = 'category_path'

	 validates :path_id, uniqueness: true

end