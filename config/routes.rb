Rails.application.routes.draw do
  devise_for :users
  resources :surveys do
    resources :votes
  end
  root to: "home#index"
end
