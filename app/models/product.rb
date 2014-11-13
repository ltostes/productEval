class Product < ActiveRecord::Base
  belongs_to :customer
  
  has_many :product_characteristics
  has_many :evaluations, :through => :product_characteristics
  
  validates_presence_of :name, :customer_id
  
  def characteristics
    characteristics = Array.new
    
    ProductCharacteristic.where(product_id: self.id).each do |pc|
      characteristics.push(pc.characteristic)
    end
    
    return characteristics
  end
  
  
end
