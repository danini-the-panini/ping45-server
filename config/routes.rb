Rails.application.routes.draw do
  root 'computers#index'

  resources 'computers' do
    member do
      post 'ping'
    end
  end
end
