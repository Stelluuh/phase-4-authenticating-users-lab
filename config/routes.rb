Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  #SESSIONS CONTROLLER
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  #USERS CONTROLLER
  get "/me", to: "users#show"
end
