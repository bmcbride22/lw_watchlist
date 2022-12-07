Rails.application.routes.draw do
  get 'movies/index'
  get 'movies/show'
  root to: 'pages#home'
  resources :movies
end
