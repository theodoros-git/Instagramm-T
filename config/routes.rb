Rails.application.routes.draw do
  resources :favorites, only: [:create, :destroy]
  resources :publications do
    collection do
      post :confirm
    end
  end
  get 'sessions/new'
  root to: "users#index"
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
