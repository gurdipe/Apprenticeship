class EmployerRegion < ActiveRecord::Base
  attr_accessible :employer_id, :region_id

  belongs_to :employer
  belongs_to :region
  
end
