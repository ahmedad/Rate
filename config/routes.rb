Rails.application.routes.draw do
  resources :payments
  resources :payments
  resources :subscriptions
  devise_for :users, controllers: { registrations: 'registrations'}

  resources :pins do
    member do
      get "like", to: "pins#upvote"
      get "dislike", to: "pins#downvote"
    end 
  end

  root "pins#index"
end
