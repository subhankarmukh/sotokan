Rails.application.routes.draw do
  # get 'comments/index'

  # get 'comments/new'

  resources :blog_articles do
  	resources :comments
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'blog_articles#index'
  devise_for :users
  get 'page/about'
  get 'page/contact'
end
