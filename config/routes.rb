# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  
  devise_for :users, :controllers => { registrations: 'registrations' }
  # resources :users
  

  resources :businesses do
    resources :causes do
      resources :comments 
    end
  end

  get '/search' => 'businesses#search', :as => 'search_page'
  get '/profile' => 'users#profile'

  root to: 'home#index'
end
