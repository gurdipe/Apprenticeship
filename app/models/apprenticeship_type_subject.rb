class ApprenticeshipTypeSubject < ActiveRecord::Base
  attr_accessible :apprenticeship_type_id, :subject_id

  belongs_to :apprenticeship_type
  belongs_to :subject
end
