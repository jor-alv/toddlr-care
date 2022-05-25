Rails.application.routes.draw do
  devise_for :users
  root to: 'daycares#index'

  resources :daycares, only: :show do
    resources :consultations, only: :create
    resources :reviews, only: :create
  end

  resources :daycares, except: [:index, :show]

  # Include logic to make sure that only admin profiles are shown
  get '/profiles/:id', to: 'profiles#admin_profile', as: :admin_profile

  get '/my_profile', to: 'profiles#show'
  get '/my_profile/edit', to: 'profiles#edit', as: :edit_my_profile
  patch '/my_profile', to: 'profiles#update'
  delete '/my_profile', to: 'profiles#destroy'

  get '/my_admin_consultations', to: 'consultations#my_admin_consultations'
  patch '/my_admin_consultations/:id', to: 'consultations#update'

  get '/my_consultations', to: 'consultations#my_consultations'

  # Ensure that consultation belongs to current user
  patch '/consultations/:id', to: 'consultations#update'

  # Ensure that review belongs to current user
  resources :reviews, only: :destroy

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
