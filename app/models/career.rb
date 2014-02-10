class Career < ActiveRecord::Base
  attr_accessible :name

  has_many   :apprenticeship_type_careers, :dependent => :destroy
  has_many 	 :apprenticeship_types, through: :apprenticeship_type_careers

  validates :name, :presence => true
end
