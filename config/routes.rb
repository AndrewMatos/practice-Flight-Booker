Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to: "application#redirect_to_flights_index"
   resources :flights , only: [:index]
   resources :bookings
end
