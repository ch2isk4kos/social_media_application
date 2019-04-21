Rails.application.routes.draw do

    devise_for :users, :controllers => {:registrations => "registrations"}

    # localhost:3000/login
    devise_scope :user do
        get 'login', to: 'devise/sessions#new'
    end

    # localhost:3000
    root 'pages#index'
end
