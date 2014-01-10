Ladybug::Application.routes.draw do
  resources :posts
  resources :users

  get '/about' => 'staticpages#about'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#login'
end
