Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  
  get 'homes/new'
  get 'homes/index'
  get 'homes/show'
  get 'books/new'
  get 'books/index'
  get 'books/show'
  get 'users/show'
  get 'users/edit'
  devise_for :books
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
