Rails.application.routes.draw do
  root to: "body_data#index"
  resources :body_data
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
