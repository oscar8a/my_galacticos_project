Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :coaches
  resources :player_squads
  resources :players
  resources :reviews
  resources :squads
  resources :users
  
  get "/login", to: 'login#new'
  post "/login", to: "login#create"
  delete "/logout", to: "login#destroy"
  get "/main", to: "users#main"

end
