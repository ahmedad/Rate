Rails.application.routes.draw do
  resources :memberships
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # devise_for :user
  # devise_for :admin
  resources :plan
  devise_for :users, controllers: { registrations: 'registrations'}

  resources :pins do
    member do
      get "like", to: "pins#upvote"
      get "dislike", to: "pins#downvote"
    end 
  end

  get 'payment/new'

  root "pins#index"
end
