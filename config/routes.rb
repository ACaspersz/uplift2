Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'home#index'
  resources :users
  resources :causes
  resources :businesses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/search' => 'pages#search', :as => 'search_page'
  get '/profile' => 'users#profile'
end
