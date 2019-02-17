class Flight < ApplicationRecord
	belongs_to :from_airport, class_name: 'Airport' 
 	belongs_to :to_airport, class_name: 'Airport'

 	 def start_formatted
    	self.start.strftime("%m/%d/%y")
     end

     def self.search(params)
     	date = Date.parse(params[:flight][:start])
     	Flight.where("to_airport_id = :to_airport_id AND from_airport_id = :from_airport_id AND start >= :start AND start <= :end" ,
     		to_airport_id: params[:flight][:to_airport_id], 
     		from_airport_id: params[:flight][:from_airport_id],
     		 start: date.midnight, end: date.end_of_day  )
     end

     
end
