Rails.application.routes.draw do

  devise_for :admins

  resources :blogs, only: [:index, :show]

  namespace :admin do

    get "/", to: "categories#index"

    resources :categories

    resources :articles do
      resources :comments do
        resources :answers
      end
    end
  end

  root 'welcome#index'

end
