Rails.application.routes.draw do
  root to: 'documents#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :documents, only: [:index, :create, :destroy]
end
