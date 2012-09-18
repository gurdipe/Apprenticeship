class TypesOfApprenticeship < ActiveRecord::Base
  attr_accessible :job_roles, :quals, :salary, :sector, :sector_image, :small_icon, :app_type
  mount_uploader :small_icon, SmallIconUploader


  # def sector_image_url
  #   sector_image.url
  # end

  def small_icon_url
  	# domain = request.domain
  	# domain + 
  	small_icon.url.to_s
  	# small_icon? small_icon.url :
  end

# You could then include it in the json by using the :methods option: 

# format.json { render :json =>
#          {
#            :posts => @posts.as_json(:include =>
#              {:user =>
#                {:only =>
#                  [:username, :distance],
#                 :methods => :profile_photo_url }})
#          }
# }


# def self.feed_prepare

# 	TypesOfApprenticeship

# end



end
