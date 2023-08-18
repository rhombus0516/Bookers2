Rails.application.routes.draw do
  get 'homes/new'
  get 'homes/index'
  get 'homes/show'
  get 'books/new'
  get 'books/index'
  get 'books/show'
  get 'users/show'
  get 'users/edit'
  devise_for :books
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
