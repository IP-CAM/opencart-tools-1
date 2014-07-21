class Category < ActiveRecord::Base

  # override the table name
  self.table_name = "category"

  validates :image, presence: true
  validates :image, uniqueness: true

  # declare the associations
  has_one :category_description


  before_save :set_defaults
  after_save :add_category_path

  def set_defaults
    self.status = 1
    self.top = 0
    self.column = 0
  end

  def add_category_path
    CategoryPath.create!(category_id: id, path_id: id, level: 0)
  end

end
