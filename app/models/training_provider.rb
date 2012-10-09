class TrainingProvider < ActiveRecord::Base
  attr_accessible :contact_number, :email_address, :region, :logo_image, :position, :provider_description, :provider_name,  :web_address, :regions
  has_many  :provider_influences
  has_many  :regions, :through => :provider_influences 

  mount_uploader :logo_image, TrainingProviderLogoUploader


def myregions
 provider_influences
end

def logo_image_url
	logo_image.url.to_s
end

def logo_image_name
	name_strip logo_image.url.to_s
end

def name_strip url
 /(\/\d+\/)(.*\.png)/.match(url)[2].to_s if /(\/\d+\/)(.*\.png)/.match(url)

end

end
