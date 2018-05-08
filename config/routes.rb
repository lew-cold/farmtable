Rails.application.routes.draw do
  get 'orders/new'
  resources :profiles
  devise_for :users, controllers: { registrations: "registrations", omniauth_callbacks: 'omniauth_callbacks' }
  resources :products do
    resources :orders
  end
  resources :charges
  
  root 'pages#index'
  get '/success' => 'pages#success'
  get '/interstitial' => 'pages#interstitial'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
