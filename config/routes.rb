Rails.application.routes.draw do
  resources :cards
  resources :diaries
  devise_for :users

  root to: 'diaries#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
