Rails.application.routes.draw do
  resources :topics
  resources :books
  resources :bookshelves
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
