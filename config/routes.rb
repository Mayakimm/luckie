Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :users, only: %i[show edit update]
  resources :tasks, only: %i[create update delete] do
    collection do
      get :schedule
    end
  end
end
