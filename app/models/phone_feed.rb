class PhoneFeed < ActiveRecord::Base
# class PhoneFeed
attr_accessible :all_clients
  class << self





	def all_clients

		 test = {

		# :LastUpdate => DateTime.now.as_json,
		:Settings => LastUpdate.new.as_json(
			only: [],
			methods:[:updated_at],
			),		
		:HowToApply => HowToApply.all.as_json(
			only: [:id, :help_title, :content],
			),
		:Employers => Employer.all.as_json(
			only: [:id, :position, :contact_number, :email_address, :employer_description, :employer_name, :web_address, :updated_at],
			methods: [:logo_image_url, :logo_image_name, :employer_regions, :employer_sectors, :employer_photos],
			),
		:EmployerPhotos => EmployerPhoto.all.as_json(
			only: [:id, :caption, :updated_at],
			methods: [:photo_url, :photo_name],
			),
		:TrainingProviders => TrainingProvider.all.as_json(
			only: [:id, :position, :contact_number, :email_address, :provider_description, :provider_name, :web_address, :updated_at],
			methods: [ :logo_image_url, :logo_image_name, :provider_influences, :provider_sectors],
			),
	  :Sectors => Sector.all.as_json(
	 		only: [:id, :title, :created_at, :updated_at, :sector_description, :updated_at], 
	 		methods: [:small_image_url, :small_image_name, :app_types_image_url, :apprenticeship_types, :app_types_image_name ], 
	 		) ,
		:ApprenticeshipTypes => ApprenticeshipType.all.as_json(
			only: [:job_role, :apprenticeship_type, :id, :sector_id, :qualification, :salary , :updated_at],
			methods: [ :appTypeDescription ],
			),
		:WhatIsAnApprenticeships => WhatIsAnApprenticeship.all.as_json(
			only: [:description_detail, :qualifications, :ten_things, :what_is_it_like, :why_do_one, :updated_at],
			),
		:ChoosingAnApprenticeships => ChoosingAnApprenticeship.all.as_json(
			only: [:employers, :money, :qualifications, :skills, :training, :travel, :updated_at]
			),
		:Regions => Region.all.as_json(
			only: [:id, :name, :updated_at ],
			),
			}
	end

	def records_since time
				 test = {
		 
		:Settings => LastUpdate.new.as_json(
			only: [],
			methods:[:updated_at],
			),
		:Employers => Employer.records_since(time).as_json(
			only: [:id, :contact_number, :email_address, :employer_description, :employer_name, :web_address, :updated_at],
			methods: [:logo_image_url, :logo_image_name, :employer_regions, :employer_sectors, :employer_photos],
			),
		:EmployerPhotos => EmployerPhoto.records_since(time).as_json(
			only: [:id, :caption, :created_at, :updated_at],
			methods: [:photo_url, :photo_name],
			),
		:TrainingProviders => TrainingProvider.records_since(time).as_json(
			only: [:id, :contact_number, :email_address, :provider_description, :provider_name, :web_address, :updated_at],
			methods: [ :logo_image_url, :logo_image_name, :provider_influences, :provider_sectors]
			),
	  :Sectors => Sector.records_since(time).as_json(
	 		only: [:id, :title, :created_at, :updated_at, :sector_description , :updated_at], 
	 		methods: [:small_image_url, :small_image_name, :app_types_image_url, :apprenticeship_types, :app_types_image_name] 
	 		) ,
		:ApprenticeshipTypes => ApprenticeshipType.records_since(time).as_json(
			only: [:job_role, :apprenticeship_type, :id, :sector_id, :qualification, :salary, :updated_at ],
			methods: [ :appTypeDescription ]
			),
		:WhatIsAnApprenticeships => WhatIsAnApprenticeship.records_since(time).as_json(
			only: [:description_detail, :qualifications, :ten_things, :what_is_it_like, :why_do_one, :updated_at]
			),
		:ChoosingAnApprenticeships => ChoosingAnApprenticeship.records_since(time).as_json(
			only: [:employers, :money, :qualifications, :skills, :training, :travel, :updated_at]
			),
		:Regions => Region.records_since(time).as_json(
			only: [:id, :name , :updated_at],
			)
			}
		end
	end
end

