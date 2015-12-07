class Address < ActiveRecord::Base
	geocoded_by :address   # can also be an IP address
	after_validation :geocode          # auto-fetch coordinates

	def coordinates
		[latitude, longitude]
	end
end
