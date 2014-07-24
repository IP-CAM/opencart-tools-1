require 'active_record'
$:.unshift File.dirname(__FILE__)
require 'category'
require 'category_description'
require 'category_path'
require 'product'
require 'product_description'


ActiveRecord::Base.establish_connection(

  adapter: 'mysql2',
  host: 'localhost',
  username: 'root',
  password: '',
  database: 'ocart'

)

I18n.enforce_available_locales = false
