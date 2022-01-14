Rails.application.routes.draw do
  devise_for :users
  root "homes#top"
  get '/search', to: 'searchs#search'
  resources :posts
  resources :users, only: %i[index show edit]
  resources :genres, only: %i[index show create update destroy edit]
  get '/meals/day', to: 'meals#day'
  resources :meals
  resources :cookings do
    resource :favorites, only: [:create, :destroy]
  end
end
