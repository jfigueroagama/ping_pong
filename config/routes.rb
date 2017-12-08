Rails.application.routes.draw do
  root "home_page#home"
  resources :games, only: [:new, :index, :create, :show]
  devise_for :users
end
