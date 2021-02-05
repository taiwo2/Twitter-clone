Rails.application.routes.draw do
  resources :tweeters

  root 'tweeters#index'
end
