Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: "registrations" }
  resources :tweeters

  root "tweeters#index"
end
