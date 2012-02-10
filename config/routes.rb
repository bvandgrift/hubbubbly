#Hubbubbly::Application.routes.draw do
Rails.application.routes.draw do

  mount_point = Hubbubbly::Engine.config.mount_at
  puts "FUCKING MOUNT POINT: #{mount_point.inspect}"
#  mount Hubbubbly::Engine => "/hub"

  scope(:path => mount_point) do
    resources :clippings, :only => [:show, :index], :path_prefix => mount_point
    resources :events, :only => [:show,:index], :path_prefix => mount_point
    resources :related_resources, :only => [:show, :index], :path_prefix => mount_point

    namespace :manage, :path_prefix => mount_point do
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
  end
end
