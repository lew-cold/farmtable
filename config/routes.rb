Rails.application.routes.draw do
  resources :profiles
  devise_for :users, controllers: { registrations: "registrations", omniauth_callbacks: 'omniauth_callbacks' }
  resources :products
  resources :charges
  resources :conversations, only: [:index, :show, :destroy] do
    collection do
      delete :empty_trash
    end
    member do
      post :reply
      post :restore
    end
  end
  # resources :conversations, only: [:index, :show, :destroy] do
  #   member do
     
  #     delete :empty_trash
  #   end
  # end
  resources :messages, only: [:new, :create]
  
  root 'pages#index'
  get '/success' => 'pages#success'
  get '/interstitial' => 'pages#interstitial'
  resources :supports
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
