Rails.application.routes.draw do
  resources :products do
    resources :reviews, :except => [:show, :index]
  end
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
