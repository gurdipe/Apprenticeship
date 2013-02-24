class ApprenticeshipType < ActiveRecord::Base
  attr_accessible :apprenticeship_type, :description, :job_role, :qualification, :salary, 
  :sector_id, :print_title, :print_description, :print_qualification, :print_job_role,
  :issuing_authority, :new, :revised, :higher_apprenticeship, :print_salary

  belongs_to :sector

   def appTypeDescription
		description
	 end

	def self.records_since(time)
	  where("created_at > ?", time)
	end

end
