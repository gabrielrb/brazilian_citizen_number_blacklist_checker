Rails.application.routes.draw do
  root to: 'citizens_numbers#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :citizens_numbers, only: :create
  # get "citizens_numbers/:id", to: "citizens_numbers#show", as: :citizen_number
  delete "citizens_numbers/:id", to: "citizens_numbers#destroy"
end
