class User < ActiveRecord::Base
  belongs_to :customer
  
  has_many :evaluations
  
  validates_presence_of :name, :customer_id
  
end
