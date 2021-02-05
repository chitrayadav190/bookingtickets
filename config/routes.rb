Rails.application.routes.draw do
  devise_for :users
  resources :bookingtickets
  resources :ticketings
  #get '#home/index'
  get 'home/about'
  get 'home/payment'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
