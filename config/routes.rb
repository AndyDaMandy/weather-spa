Rails.application.routes.draw do
  resources :chats
  resources :weathers
  get 'home/index'
  root 'weathers#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
