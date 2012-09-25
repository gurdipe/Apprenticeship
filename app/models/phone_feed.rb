class PhoneFeed < ActiveRecord::Base
attr_accessible :all_clients
  class << self





	def all_clients

		 test = {
		 # :TypesOfApprenticeships => TypesOfApprenticeship.feed_prepare
		 # :TypesOfApprenticeships => TypesOfApprenticeship.all.as_json(
		 # 	only: [:app_type, :created_at, :updated_at, :job_roles, :sector, :id, :salary, :quals ], 
		 # 	methods: [:small_icon_url] ) ,
		 # :Articles => Article.all,

		 :Sectors => Sector.all.as_json(
		 	only: [:id, :title, :created_at, :updated_at, :sector_description ], 
		 	methods: [:small_image_url, :small_image_name, :app_types_image_url,  :app_types_image_name] ) ,

			}
		 test

	end

end
end

