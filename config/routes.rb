Rails.application.routes.draw do
  devise_for :users
  resources :votes
  root to: "home#index"
end
