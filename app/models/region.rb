class Region < ActiveRecord::Base
  attr_accessible :name, :training_providers, :updated_at
  has_many   :provider_influences, :dependent => :destroy
  has_many 	 :training_providers, through: :provider_influences
  
  has_many   :employer_regions, :dependent => :destroy
  has_many 	 :employers, through: :employer_regions



def self.records_since(time)
  where("created_at > ?", time)
end


end
