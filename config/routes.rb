require 'api_version_constraint'

Rails.application.routes.draw do
  devise_for :users, only: [:sessions], controller: { sessions: 'api/v2/sessions' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Config namespace and subdomain.
  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: '/' do
    
    namespace :v1, path: '/', constraints: ApiVersionConstraint.new(version: 1) do
      resources :users, only: [:create, :destroy, :show, :update]
      resources :sessions, only: [:create, :destroy]
      resources :tasks, only: [:index, :destroy, :create, :show, :update]
    end

    namespace :v2, path: '/', constraints: ApiVersionConstraint.new(version: 2, default: true) do
      mount_devise_token_auth_for 'User', at: 'auth'      
      resources :users, only: [:create, :destroy, :show, :update]
      resources :sessions, only: [:create, :destroy]
      resources :tasks, only: [:index, :destroy, :create, :show, :update]
    end

  end
end
