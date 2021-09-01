Rails.application.routes.draw do
  get 'rol/index'
  get 'user/index'
  get 'book/index'
  get 'books/:id', to: 'books#show'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :rol
  resources :user
  resources :book

end
