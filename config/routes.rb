Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: 'welcome#index'
  resources :users, only: %i[new create]

  resources :marvel_characters

  resources :sessions, only: %i[new create]
  delete '/logout', to: 'sessions#destroy', as: 'logout'
end
