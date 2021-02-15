Rails.application.routes.draw do
  devise_for :users
  root to: 'views#index'
  resources :views
end
