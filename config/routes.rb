Rails.application.routes.draw do
  root 'login#login'

  # Aayush Ranaut Routes
  post 'api/hospital', to: 'api#hospital'
  post 'api/search', to: 'api#search'

  # Chashmeet Singh Routes
  match "/:controller(/:action(/:id))",:via => [:get,:post]

    #asset routes
  match "/:controller(/:action(/:id))",:via => [:get,:post]
  end
