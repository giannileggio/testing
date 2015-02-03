Rails.application.routes.draw do
  devise_for :users
  root to:'books#index'

  get 'books', to: 'books#index'

  get 'books/:slug', to: 'books#show', as: :book

  get 'coming_soon', to: 'books#coming_soon', as: :coming_soon

  get 'on_sale', to: 'books#on_sale', as: :on_sale

  get 'my_list', to: 'books#my_list', as: :my_list

  post 'add_to_list', to: 'books#add_to_list', as: :add_to_list
end
