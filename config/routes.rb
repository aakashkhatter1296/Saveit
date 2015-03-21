Rails.application.routes.draw do
  root 'login#login'



  # Aayush Ranaut Routes
  post 'api/hospital', to: 'api#hospital'

  # Chashmeet Singh Routes
  match "/:controller(/:action(/:id))",:via => ["get","post"]
  end
