Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  root to: 'pages#home'

  get 'pages', to: 'pages#home'

  get 'pages/news', to: 'pages#news'

  get '/blogs/:id', to: 'blogs#show', as: 'blog'

  # get 'pages', to: 'blogs#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :blogs, only: [:list] do
    member do
      post :follow
      post :unfollow
    end
  end
end
