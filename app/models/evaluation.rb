class Evaluation < ActiveRecord::Base
  belongs_to :product_characteristic
  belongs_to :user
  
  validates :score, presence:true, inclusion: { in: 0..10 }
  validates_presence_of :product_characteristic_id
  validates_presence_of :user_id
  
  #def Product
  #  return Product.find(1)
  #end
  
  #def Product_Characteristics
  #  return self.product_characteristics
  #end
  
  #def self.Characteristic
  #  return self.Characteristic.find(1)
  #end
  
  #def User
  #  return user
  #end
  
end
