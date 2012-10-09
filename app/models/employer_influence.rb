class EmployerInfluence < ActiveRecord::Base
  attr_accessible :employer_id, :region_id

  belongs_to :employers
  belongs_to :regions
end
