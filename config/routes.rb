Rails.application.routes.draw do
  resources 'registrations', path: 'register'
  resources 'suggestion', path: 'suggest'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
