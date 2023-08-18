Rails.application.routes.draw do
  devise_for :users
  devise_for :books
  root to: 'homes#top'
  
  get 'homes/new'
  get 'homes/index'
  get 'homes/show'
  
  resources :books, only: [:new, :index, :show]
  
  resources :users, only: [:show, :edit]

  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
