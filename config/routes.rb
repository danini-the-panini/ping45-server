Rails.application.routes.draw do
  root 'computers#index'

  resources 'computers', only: [:index, :new, :create]

  post 'ping', to: 'computers#ping'
end
