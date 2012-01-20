Hubbubbly::Application.routes.draw do

  # omniauth homina homina
  match "/auth/:provider/callback", to: "sessions#create"
  match "/auth/failure", to: "sessions#failure"
  match "/signout", to: "sessions#destroy", :as => "signout"
  match "/signin", to: "sessions#new", :as => "signin"

  resources :identities

  resources :clippings, :only => [:show, :index]
  resources :events, :only => [:show,:index]
  resources :related_resources, :only => [:show, :index]

  namespace :manage do
    resources :clippings do
      member do
        get 'import'
      end
    end
    resources :calendars do
      member do
        get 'import'
      end
    end
    resources :related_resources
    resources :sources do
      member do
        get 'import'
      end
    end
    resources :events, :only => [:new, :create, :update, :destroy]
  end

  root :to => "front#index"


  # match ':controller(/:action(/:id(.:format)))'
end
