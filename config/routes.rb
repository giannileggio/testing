Rails.application.routes.draw do
  root to:'books#index'

  get 'books', to: 'books#index'

  get 'books/:slug', to: 'books#show', as: :book

  get 'coming_soon', to: 'books#coming_soon', as: :coming_soon
end
