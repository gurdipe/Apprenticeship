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
		 	methods: [:small_image_url, :small_image_name, :app_types_image_url,  :app_types_image_name] 
		 	) ,
		:ApprenticeshipTypes => ApprenticeshipType.all.as_json(
			only: [:job_role, :apprenticeship_type, :id, :sector_id, :qualification, :salary ],
			methods: [ :appTypeDescription ]
			),
		:WhatIsAnApprenticeships => WhatIsAnApprenticeship.all.as_json(
			only: [:description_detail, :qualifications, :ten_things, :what_is_it_like, :why_do_one]
			),
		:ChoosingAnApprenticeships => ChoosingAnApprenticeship.all.as_json(
			only: [:employers, :money, :qualifications, :skills, :training, :travel]
			),
		:TrainingProviders => TrainingProvider.all.as_json(
			only: [:contact_number, :email_address, :position, :provider_description, :provider_name, :region, :web_address],
			methods: [ :logo_image_url ]
			)
			}
		 

	end

end
end

