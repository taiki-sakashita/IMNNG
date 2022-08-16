Rails.application.routes.draw do
  resources :users

  post '/auth/:provider/callback', to: 'user_essions#create'
  get '/login', to: 'user_sessions#new'
  post '/login', to: 'user_sessions#create'
  delete '/logout', to: 'user_sessions#destroy'
  get '/partial/_config', to: 'tops#ajax'
  post '/partial/_config', to: 'users#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tops#top'
  post 'ima', to:'tops#ima'
end
