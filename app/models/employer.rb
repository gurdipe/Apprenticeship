class Employer < ActiveRecord::Base
  attr_accessible :case_study_description, :case_study_image, :case_study_image_name, :contact_number, :email_address, :employer_description, :employer_name, :logo_image, :logo_image_name, :position, :web_address

  mount_uploader :logo_image, LogoImageUploader
  mount_uploader :case_study_image, CaseStudyImageUploader

  has_many :employer_regions
  has_many :regions, through: :employer_regions

  has_many :employer_sectors
  has_many :sectors, through: :employer_sectors


def logo_image_url
  	logo_image.url.to_s
end

def logo_image_name
  	name_strip logo_image.url.to_s
end


def case_study_image_url
  	case_study_image.url.to_s
end

def case_study_image_name
  	name_strip case_study_image.url.to_s
end


def name_strip url
	 /(\/\d+\/)(.*\.png)/.match(url)[2].to_s if /(\/\d+\/)(.*\.png)/.match(url)
end


end
