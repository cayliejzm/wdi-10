Rails.application.routes.draw do
  root :to => 'pages#hamldemo'
  get '/bootstrapdemo' => 'pages#bootstrapdemo'
  get '/users/edit' => 'users#edit', :as => :edit_user
  resources :users, :except => [:edit]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
