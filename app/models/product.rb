class Product < ActiveRecord::Base
  belongs_to :customer
  
  has_many :evaluations, :through => :product_characteristics
  
  validates_presence_of :name, :customer_id
  
end
