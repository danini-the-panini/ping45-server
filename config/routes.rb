Rails.application.routes.draw do
  root 'computers#index'

  resources 'computers' do
  end

  post 'ping', to: 'computers#ping'
end
