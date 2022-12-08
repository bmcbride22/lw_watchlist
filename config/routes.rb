Rails.application.routes.draw do
  resources :lists
  get 'movies/index'
  get 'movies/show'
  root to: 'pages#home'
  resources :movies
end
