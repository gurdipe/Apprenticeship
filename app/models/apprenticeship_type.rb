class ApprenticeshipType < ActiveRecord::Base
  attr_accessible :apprenticeship_type, :description, :job_role, :qualification, :salary, :sector_id
  belongs_to :sector

   def appTypeDescription
		description
	 end

end
