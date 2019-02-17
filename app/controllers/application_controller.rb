class ApplicationController < ActionController::Base

	def redirect_to_flights_index
		redirect_to flights_url
	end
end
