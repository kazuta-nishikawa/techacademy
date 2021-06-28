Rails.application.routes.draw do
  root to: "rugby_world_cup_host_countries#index"
  resources :rugby_world_cup_host_countries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
