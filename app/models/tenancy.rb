class Tenancy < ActiveRecord::Base
  attr_accessible :startDate, :stopDate, :billingType, :charge, :plot_id
  
  belongs_to :customer
end
