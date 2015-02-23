Rails.application.routes.draw do

  devise_for :users

  devise_for :admins

  namespace :user do

    get "/", to: "articles#index"

    resources :articles, only: [:index, :show] do
      resources :comments, only: [:index, :show] do
        resources :answers, only: [:index, :show]
      end
    end

  end

  namespace :admin do

    get "/", to: "categories#index"

    resources :categories

    resources :articles do
      resources :comments do
        resources :answers
      end
    end
  end

  resources :posts, only: [:index, :show]

  root 'posts#index'

end
