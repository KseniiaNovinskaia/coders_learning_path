Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :paths, only: [ :index, :show ] do
    resources :step_progresses, only: [ :create ]
  end

  resources :step_progresses, only: [ :update ]

  get "/profiles/:user_name", to: "profiles#show", as: :user_profile
  get '/profiles/:user_name/edit', to: 'profiles#edit', as: :edit_profile
  patch '/profiles/:user_name', to: 'profiles#update'

  resources :codewars_profiles, only: [ :create ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
