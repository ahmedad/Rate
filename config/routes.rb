Rails.application.routes.draw do
  resources :payments
  resources :payments
  resources :subscriptions
  devise_for :users, controllers: { registrations: 'registrations'}
  resources :pins do
  	member do
  		put "like", to: "pins#upvote"
  		put "dislike", to: "pins#downvote"
  	end 
  end

  root "pins#index"
end
