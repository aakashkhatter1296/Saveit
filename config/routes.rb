Rails.application.routes.draw do
  root 'login#login'
  match "/:controller(/:action(/:id))",:via => ["get","post"] 
  end
