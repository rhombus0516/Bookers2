Rails.application.routes.draw do
  get 'homes/top'
  get '/homes/about' => 'homes#about',as: 'about'
  
  devise_for :users
  devise_for :books
  root to: 'homes#top'

  get 'homes/new'
  get 'homes/index'
  get 'homes/show'

  resources :books, only: [:new, :index, :create, :edit, :show]



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
