Rails.application.routes.draw do

  get 'blog' => 'blog_list#index', as: :blog

  get 'search(/:search)' => 'search#search', as: :search

  get 'about' => 'about#index', as: :about

  get 'posts/:id' => 'posts#show', as: :post

  root 'posts#index'

end
