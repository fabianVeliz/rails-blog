Rails.application.routes.draw do

  resources :categories

  resources :answers

  resources :comments

  resources :articles

  root 'welcome#index'

end
