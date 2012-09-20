class Sector < ActiveRecord::Base
  attr_accessible :app_types_image, :sector_description, :small_image, :title

  has_many :apprenticeship_types

  mount_uploader :small_image, SmallIconUploader
  mount_uploader :app_types_image, SectorImageUploader


  def small_image_url
  	small_image.url.to_s
  end

  def small_image_name
  	name_strip small_image.url.to_s
  end

  def app_types_image_url
  	app_types_image.url.to_s
  end

  def app_types_image_name
  	name_strip app_types_image.url.to_s
  end


def name_strip url
 /(\/\d+\/)(.*\.png)/.match(url)[2].to_s if /(\/\d+\/)(.*\.png)/.match(url)

end


end
