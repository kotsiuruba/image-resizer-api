require 'api_constraints'

Rails.application.routes.draw do

    namespace :api do
      scope module: :v1, :constraints => ApiConstraints.new(version: 1, default: true) do
        resources :users#, :only => [:create]
        resources :images
      end
    end

end
