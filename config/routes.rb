Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :plan
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
