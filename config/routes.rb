# -*- encoding : utf-8 -*-
Rails.application.routes.draw do
  root to: 'home#index'

  get '/:result', to: 'home#index'
  
  post '/', to: 'home#create'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
