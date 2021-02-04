Rails.application.routes.draw do
root 'tweeters#index'

  resources :tweeters
end
