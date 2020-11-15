Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'home#index'
  resources :users
  resources :causes
  resources :businesses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/search' => 'pages#search', :as => 'search_page'
 
  get "/causes/index", to: "causes#index", as: "show_causes"
  get '*path', to: 'sellers#index', via: :all
  post "/causes/new", to: "causes#new"
end
