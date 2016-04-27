Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  get 'page/about'
  get 'page/contact'
end
