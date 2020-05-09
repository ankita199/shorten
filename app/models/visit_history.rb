class VisitHistory < ApplicationRecord
	DEFAULT_COUNTRY = "US"
	belongs_to :url
	
	class << self
		def create_analysis(ip,country,url_obj)
			country ||= DEFAULT_COUNTRY
			VisitHistory.create(ip_address: ip, country: country,url_id: url_obj.id)
		end
	end
end
