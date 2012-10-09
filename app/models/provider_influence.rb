class ProviderInfluence < ActiveRecord::Base
  attr_accessible :region_id, :training_provider_id

  belongs_to :training_provider
  belongs_to :region
end
