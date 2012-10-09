class EmployerSector < ActiveRecord::Base
  attr_accessible :employer_id, :sector_id

  belongs_to :employer
  belongs_to :sector

end
