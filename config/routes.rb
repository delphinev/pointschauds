Rails.application.routes.draw do
  devise_for :users
  resources :surveys
  root to: "home#index"

  if Rails.env.development?
    mount Localtower::Engine, at: "localtower"
  end
end
