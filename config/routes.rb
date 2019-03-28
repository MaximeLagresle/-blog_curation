Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'pages', to: 'pages#home'

  post 'pages', to: 'pages#new_blog_post_a16z_callback'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
