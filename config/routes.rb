Rails.application.routes.draw do

  resources :authors
  resources :posts

  get 'blog' => 'posts#blog', as: :blog

  get 'search(/:search)' => 'search#search', as: :search

  get 'authors/:id/posts' => 'authors#author_posts', as: :author

  get 'authors' => 'authors#author_list'

  root 'posts#index'

end
