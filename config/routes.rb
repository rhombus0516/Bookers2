Rails.application.routes.draw do

  devise_for :users

  get 'homes/top'
  get '/homes/about' => 'homes#about',as: 'about'



  root to: 'homes#top'

  get 'homes/new'
  get 'homes/index'
  get 'homes/show'



  resources :books, only: [:new, :index, :create, :edit, :show, :destroy]
  resources :users, only: [:index, :show, :edit]
  
  patch 'books/:id' => 'books#update', as: 'update_book'
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
