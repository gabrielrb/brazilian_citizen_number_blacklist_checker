Rails.application.routes.draw do
  root to: 'documents#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "status", to: "pages#status", as: :status

  resources :documents, only: [:index, :create, :destroy]

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :documents, only: [ :index ]
      get "documents/*number", to: "documents#show"
    end
  end
end
