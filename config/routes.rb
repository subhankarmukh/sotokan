Rails.application.routes.draw do
  resources :blog_articles
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'blog_articles#index'
  devise_for :users
  get 'page/about'
  get 'page/contact'
end
