class ChoosingAnApprenticeship < ActiveRecord::Base
  attr_accessible :employers, :money, :qualifications, :skills, :training, :travel


def self.records_since(time)
  where("created_at > ?", time)
end


end
