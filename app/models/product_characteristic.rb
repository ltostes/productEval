class ProductCharacteristic < ActiveRecord::Base
  belongs_to :product
  belongs_to :characteristic
  has_many :evaluations
  
  validates_presence_of :product_id, :characteristic_id
  
end
