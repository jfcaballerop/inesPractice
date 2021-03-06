Rails.application.routes.draw do
  root 'static_pages#home'

  get 'static_pages/home'
  get 'static_pages/help'

  resources :textnotes
  resources :usuarios
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get  '/signup',  to: 'usuarios#new'
  post  '/signup',  to: 'usuarios#create'

end
