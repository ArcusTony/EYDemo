class Customer < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname, :phone
  
  has_many :tenancies, :dependent => :destroy
end
