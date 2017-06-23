Rails.application.routes.draw do
  resources :textnotes
  resources :usuarios
  root 'usuarios#index'

end
