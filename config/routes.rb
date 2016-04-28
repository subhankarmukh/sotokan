Rails.application.routes.draw do
  resources :blog_articles
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'visitors#index'
  devise_for :users
  get 'page/about'
  get 'page/contact'
end
