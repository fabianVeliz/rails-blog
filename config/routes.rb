Rails.application.routes.draw do

  devise_for :admins

  resources :blogs, only: [:index, :show]

  namespace :admin do

    get "/", to: "categories#index"

    resources :categories

    resources :answers

    resources :comments

    resources :articles
  end

  root 'welcome#index'

end
