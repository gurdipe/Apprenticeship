class ApprenticeshipTypeCareer < ActiveRecord::Base
  attr_accessible :apprenticeship_type_id, :career_id

  belongs_to :apprenticeship_type
  belongs_to :career

end
