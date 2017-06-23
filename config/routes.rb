Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'

  resources :textnotes
  resources :usuarios
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'

end
