# config/routes.rb
#
Rails.application.routes.draw do
  resources :hellos
  root 'hellos#index'
end
