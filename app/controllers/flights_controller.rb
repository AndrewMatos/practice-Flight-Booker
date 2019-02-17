class FlightsController < ApplicationController
	def index
		@flight = Flight.new
		@flight_options = Flight.all.map{|f|[f.start_formatted, f.start]}
		@airport_options = Airport.all.map{|a|[a.code, a.id] }
	    
	    #debugger
	    if params[:flight]
			@search = Flight.search(params)
			@booking = Booking.new
	    else
	    	@search = [] 
		end
	 
		#debugger
	end
end
