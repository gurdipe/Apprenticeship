class Subject < ActiveRecord::Base
  attr_accessible :name

  has_many   :apprenticeship_type_subjects, :dependent => :destroy
  has_many 	 :apprenticeship_types, through: :apprenticeship_type_subjects

  validates :name, :presence => true
end
