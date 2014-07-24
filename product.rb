class Product < ActiveRecord::Base

	self.table_name = 'product'

	validates :image, presence: true
	validates :image, uniqueness: true

	has_and_belongs_to_many :categories, join_table: "product_to_category"

	before_save :set_defaults

	def set_defaults
		self.sku = ''
		self.upc = ''
		self.ean = ''
		self.jan = ''
		self.isbn = ''
		self.mpn = ''
		self.location = ''
		self.stock_status_id = 0
		self.manufacturer_id = 0
		self.tax_class_id = 0
		self.date_available = Time.new.strftime('%Y-%m-%d')
		self.weight = 0
		self.weight_class_id = 0
		self.length = 0
		self.width = 0
		self.height = 0
		self.length_class_id = 0
		self.subtract = 0
		self.minimum = 1
		self.sort_order = 0
		self.status = 1
		self.date_added = Time.now
		self.date_modified = Time.now
		self.viewed = 0
	end


end