class PhoneFeed < ActiveRecord::Base
# class PhoneFeed
attr_accessible :all_clients
  class << self





	def all_clients

		 test = {
		 # :TypesOfApprenticeships => TypesOfApprenticeship.feed_prepare
		 # :TypesOfApprenticeships => TypesOfApprenticeship.all.as_json(
		 # 	only: [:app_type, :created_at, :updated_at, :job_roles, :sector, :id, :salary, :quals ], 
		 # 	methods: [:small_icon_url] ) ,
		 # :Articles => Article.all,

		:TrainingProviders => TrainingProvider.all.as_json(
			only: [:id, :contact_number, :email_address, :provider_description, :provider_name, :web_address],
			methods: [ :logo_image_url, :logo_image_name, :provider_influences, :provider_sectors]
			),
		:Employers => Employer.all.as_json(
			only: [:id, :contact_number, :email_address, :employer_description, :employer_name, :web_address],
			methods: [:logo_image_url, :logo_image_name, :employer_regions, :employer_sectors],
			),
		 :Sectors => Sector.all.as_json(
		 	only: [:id, :title, :created_at, :updated_at, :sector_description ], 
		 	methods: [:small_image_url, :small_image_name, :app_types_image_url, :apprenticeship_types, :app_types_image_name] 
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
		:Regions => Region.all.as_json(
			only: [:id, :name ],
			# methods: [:training_providers ]
			)
			}
		 

	end

end
end

