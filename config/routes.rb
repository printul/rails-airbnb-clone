Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'


  resources :services, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:create]
  end

  resources :bookings, only: [:index, :show, :update, :edit]
  patch "bookings/:id/cancel" => "bookings#cancel", as: :cancel_booking

    namespace :vendor do
      resources :bookings, only: [:index, :show, :edit, :update]
      resources :services, only: [:new, :create, :index, :show, :edit, :update] do
        #resources :bookings, only: [:show, :edit, :update]
      end
    end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
