Rails.application.routes.draw do

  resources :posts

  get 'blog' => 'posts#blog', as: :blog

  get 'search(/:search)' => 'search#search', as: :search

  get 'about' => 'about#index', as: :about

  # get 'posts/:id' => 'posts#show', as: :post

  root 'posts#index'

end
