require 'api_version_constraint'

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # namespace :api, defaults: {format: :json}, constraints: {subdomain: 'api'}, path: '/'  do -> Como não configurei o host, não irei usar com restrições.
  namespace :api, defaults: {format: :json}, path: '/'  do

    namespace :v1, path: '/', constraints: ApiVersionConstraint.new(version: 2, default: true) do 
    end
  end
end