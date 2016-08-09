Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations'}
  resources :subscribers
  resources :pins do
  	member do
  		put "like", to: "pins#upvote"
  		put "dislike", to: "pins#downvote"
  	end 
  end

  root "pins#index"
end
