class CaseStudy < ActiveRecord::Base
  attr_accessible :company_name, :description, :email_address, :heading, :hyperlink, :logo_image, :photo, :sector_id, :standfirst, :telephone_number, :title, :website, :hall_of_fame
  belongs_to :sector
  mount_uploader :logo_image, CaseStudyLogoUploader
	# mount uploader	case_study_logo


def logo_image_url
  	logo_image.url.to_s
end

end
