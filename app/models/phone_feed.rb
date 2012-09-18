class PhoneFeed < ActiveRecord::Base
attr_accessible :all_clients
  class << self

	def all_clients

		 test = {
		 # :TypesOfApprenticeships => TypesOfApprenticeship.feed_prepare
		 :TypesOfApprenticeships => TypesOfApprenticeship.all.as_json(
		 	only: [:app_type, :created_at, :updated_at, :job_roles, :sector, :id, :salary, :quals ], 
		 	methods: [:small_icon_url] ) ,

			}
		 test

	end

end
end

