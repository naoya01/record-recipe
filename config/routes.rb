Rails.application.routes.draw do
  devise_for :users
  root "homes#top"
  resources :posts
  resources :users, only: %i[index show edit]
  resources :genres, only: %i[index show create update destroy edit]
  resources :meals
end
