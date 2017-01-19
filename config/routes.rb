Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/' => 'deeds#index'
  get '/deeds' => 'deeds#index'
  get '/deeds/new' => 'deeds#new'
  post '/deeds' => 'deeds#create'
  get '/deeds/:id' => 'deeds#show'

  get '/subscriptions/new' => 'subscriptions#new'
  post '/subscriptions' => 'subscriptions#create'
end
