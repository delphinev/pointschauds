Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :surveys
  root to: "home#index"
end
