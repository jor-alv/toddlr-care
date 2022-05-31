Rails.application.routes.draw do
  devise_for :users
  root to: 'daycares#index'
  resources :daycares, only: :index

  resources :daycares, except: [:index, :show]
  resources :daycares, only: :show do
    resources :consultations, only: :create
    resources :reviews, only: :create
  end


  # Include logic to make sure that only admin profiles are shown
  get '/profile/:id', to: 'profiles#client_profile', as: :client_profile

  get '/my_profile', to: 'profiles#show'
  get '/my_profile/edit', to: 'profiles#edit', as: :edit_my_profile
  post '/my_profile', to: 'profiles#update'
  patch '/my_profile', to: 'profiles#update'
  delete '/my_profile', to: 'profiles#destroy'

  # get '/my_admin_consultations', to: 'consultations#my_admin_consultations'
  # patch '/my_admin_consultations/:id', to: 'consultations#update'

  # get '/my_consultations', to: 'consultations#my_consultations'


  # post 'my_profile/consultation/consultation_id', to: 'consultations#update', as: :consultation
  patch 'my_profile/consultation/:consultation_id', to: 'consultations#update', as: :consultation

  # Ensure that consultation belongs to current user
  patch '/consultations/:id', to: 'consultations#update'

  # Ensure that review belongs to current user
  resources :reviews, only: :destroy

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
