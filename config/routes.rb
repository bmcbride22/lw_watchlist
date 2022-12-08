Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/delete'
  resources :lists
  get 'movies/index'
  get 'movies/show'
  root to: 'pages#home'
  resources :movies
end
