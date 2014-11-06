class Customer < ActiveRecord::Base
    has_many :products
    has_many :characteristics
    has_many :users
    has_many :evaluations, :through => :products
    has_many :evaluations, :through => :characteristics
    has_many :evaluations, :through => :users
    
    validates_presence_of :name
end
