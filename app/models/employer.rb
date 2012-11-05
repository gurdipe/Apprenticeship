class Employer < ActiveRecord::Base
  attr_accessible :sector_ids, :region_ids, :contact_number, :email_address, :employer_description, :employer_name, :logo_image, :logo_image_name, :position, :web_address

  mount_uploader :logo_image, LogoImageUploader
  mount_uploader :case_study_image, CaseStudyImageUploader

  has_many :employer_regions
  has_many :regions, through: :employer_regions
  has_many :employer_sectors
  has_many :sectors, through: :employer_sectors
  has_many :employer_photos

  # validates :logo_image, presence: :true
  # validates :employer_name, :presence => {:message => 'Please accept the terms of service'}

  # validates_presence_of :employer_name
# validates_presence_of :employer_name, :message => "can't be empty"



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

def self.records_since(time)
  where("created_at > ?", time)
end

end
