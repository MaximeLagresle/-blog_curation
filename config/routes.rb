Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  devise_for :users
  root to: 'pages#home'

  get 'pages', to: 'pages#home'

  get 'pages/news', to: 'pages#news'

  # get 'pages', to: 'blogs#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
