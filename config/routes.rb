Rails.application.routes.draw do
  root 'homes#top'
  get 'about' => 'homes#'
  devise_for :users
  resources :books, only: [:create, :index, :show, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :index]
end
