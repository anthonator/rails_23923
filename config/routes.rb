Rails.application.routes.draw do
  resources :tests, only: [:create]
end
