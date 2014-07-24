class ProductDescription < ActiveRecord::Base
  
  # override the table name
  self.table_name = 'product_description'

  validates :name, presence: true
  validates :name, uniqueness: true

  # category_description table has most of the fields set to not null just
  # double check the fields that are present in the file and take em out

  before_save :set_defaults

  def set_defaults
  	self.language_id = 1
  	self.description = ''
  	self.meta_description = ''
  	self.meta_keyword = ''
    self.tag = ''
  end

end
