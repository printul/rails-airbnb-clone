Rails.application.routes.draw do

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'


  resources :services, only: [:index, :show]

  resources :bookings, only: [:new, :create, :edit, :update, :index, :show]

    namespace :vendor do
      resources :services, only: [:new, :create, :index, :show, :edit, :update] do
        resources :bookings, only: [:index, :show, :edit, :update]
      end
    end

  mount Attachinary::Engine => "/attachinary"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
