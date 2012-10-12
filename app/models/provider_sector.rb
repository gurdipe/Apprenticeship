class ProviderSector < ActiveRecord::Base
  attr_accessible :sector_id, :training_provider_id

   belongs_to :training_provider
  belongs_to :sector
end
