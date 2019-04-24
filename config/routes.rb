Rails.application.routes.draw do

    # localhost:3000
    root 'pages#index'

    # DEVISE :user
    devise_for :users, :controllers => {:registrations => "registrations"}

    # localhost:3000/signup
    devise_scope :user do
        get 'signup', to: 'devise/registrations#new'
    end

    # localhost:3000/login
    devise_scope :user do
        get 'login', to: 'devise/sessions#new'
    end

    # POSTS
    resources :posts do
        collection do
            get 'hobby'
            get 'study'
            get 'team'
        end
    end

    # instant messaging
    namespace :private do
        resources :conversations, only: [:create] do
            member do
                post :close
            end
        end
        resources :messages, only: [:index, :create]
    end

end
