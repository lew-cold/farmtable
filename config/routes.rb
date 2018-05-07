Rails.application.routes.draw do
  resources :profiles
  devise_for :users, controllers: { registrations: "registrations", omniauth_callbacks: 'omniauth_callbacks' }
  resources :products
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
