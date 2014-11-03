class Evaluation < ActiveRecord::Base
  belongs_to :product_characteristics
  belongs_to :user
  belongs_to :consumer
  
  validates :score, presence:true, inclusion: { in: 0..10 }
  validates_presence_of :product_characteristics_id
  validates_presence_of :user_id
  
  def Product
    return Product.find(1)
  end
  
  def Product_Characteristics
    return product_characteristics
  end
  
  def Characteristic
    return Characteristic.find(1)
  end
  
  def User
    return user
  end
  
end
