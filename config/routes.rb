Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      resources :services
      resources :bookings
      post '/login', to: 'auth#create'
      get '/clientProfile', to: 'users#clientProfile'
      get '/spProfile', to: 'users#spProfile'
      get '/reauthorized', to: 'users#reauthorized'
    end
  end


end
