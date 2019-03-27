Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#index'
  resources :home, only: [:index]
  resources :invoices
end
