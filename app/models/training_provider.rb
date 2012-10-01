class TrainingProvider < ActiveRecord::Base
  attr_accessible :contact_number, :email_address, :logo_image, :position, :provider_description, :provider_name, :region, :web_address
 

  mount_uploader :logo_image, TrainingProviderLogoUploader

end
