Rails.application.routes.draw do
  get 'bookmarks/delete'
  resources :lists
  root to: 'pages#home'
  resources :movies do
    resources :bookmarks, only: %i[new create]
  end
end
