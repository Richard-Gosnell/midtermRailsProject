# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pokemon#index'
  get '/pokemon/index', to: 'pokemon#index'
  get '/pokemon/about', to: 'pokemon#about'

  resource :pokemon do
    member do
      get 'index'
      get 'about'
    end
  end
end
