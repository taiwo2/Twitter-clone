Rails.application.routes.draw do
  devise_for :users
  resources :tweeters

  root 'tweeters#index'
end
