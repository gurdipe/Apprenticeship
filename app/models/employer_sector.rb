class EmployerSector < ActiveRecord::Base
  attr_accessible :employer_id, :sector_id

  belongs_to :employers
  belongs_to :sectors

end
