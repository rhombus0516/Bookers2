Rails.application.routes.draw do
  get 'users/edit'
  get 'users/show'
  get 'users/index'
  devise_for :users
  
  get 'homes/top'
  get '/homes/about' => 'homes#about',as: 'about'
  
  

  root to: 'homes#top'

  get 'homes/new'
  get 'homes/index'
  get 'homes/show'
  
  

  resources :books, only: [:new, :index, :create, :edit, :show]
  resources :users, only: [:show, :edit]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
