Rails.application.routes.draw do
  resources :usuarios
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "usuarios#index"
end
