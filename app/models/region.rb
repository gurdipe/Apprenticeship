class Region < ActiveRecord::Base
  attr_accessible :name, :training_providers
  has_many   :provider_influences
  has_many 	 :training_providers, through: :provider_influences
  
  has_many   :employer_regions
  has_many 	 :employers, through: :employer_regions
end
