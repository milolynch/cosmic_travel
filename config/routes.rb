Rails.application.routes.draw do
  
  #get 'scientists/new'
  resources :planets
  resources :scientists
  resources :missions, only: [:new, :create]
  get "/about", to: "application#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
