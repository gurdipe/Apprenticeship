class TypesOfApprenticeship < ActiveRecord::Base
  attr_accessible :job_roles, :quals, :salary, :sector, :sector_image, :small_icon, :app_type
    mount_uploader :small_icon, SmallIconUploader


end
