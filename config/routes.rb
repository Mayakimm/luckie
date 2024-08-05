Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :users, only: %i[show]
  resources :tasks, only: %i[new create update delete]
end
