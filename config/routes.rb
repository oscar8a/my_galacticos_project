Rails.application.routes.draw do
  resources :player_squads
  resources :players
  resources :reviews
  resources :squads
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
