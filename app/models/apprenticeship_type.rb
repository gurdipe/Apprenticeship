class ApprenticeshipType < ActiveRecord::Base
  attr_accessible :apprenticeship_type, :description, :job_role, :qualification, :salary
  belongs_to :sector

end
