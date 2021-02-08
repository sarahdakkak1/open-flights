Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      ressources :airlines, params :slug
      ressources :reviews, only [:create, :destroy]
    end
  end

  get '*path', to: 'pages#index', via: :all
end
