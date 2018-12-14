Rails.application.routes.draw do
  resources :products do
    resources :reviews, :except => [:show, :index]
  end
end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
