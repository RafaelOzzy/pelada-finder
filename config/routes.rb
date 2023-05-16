Rails.application.routes.draw do
  devise_for :users
  root to: "games#index"

  resources :games do
    resources :game_participants, only: %i[create]
  end

  resources :game_participants, only: %i[destroy]

  get '/my_games', to: 'games#my_games'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
