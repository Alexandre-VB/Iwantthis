Rails.application.routes.draw do
  devise_for :users
  root to: 'topics#index'
  resources :topics do
    resources :answers
  end
end
