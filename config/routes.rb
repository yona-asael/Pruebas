Rails.application.routes.draw do
  devise_for :users
  resources :post
  resources :comment
  root 'blog#index'
  get 'vista', to: 'blog#vista'
  get 'myposts', to: 'post#mpost'
  post 'add', to: 'post#add'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
