# frozen_string_literal: true

Rails.application.routes.draw do
  # devise_for :users, controllers: { omniauth_callbacks: 'callbacks', registrations: 'registrations' }

  # ! use path below for testing basic setup
  # ! path below is not necesarry since :resources delivers the data
  # get '/artists' => 'artists#index'

  # root 'recording_sessions#index'
  resources :studios, :recording_sessions, :engineers, :artists, :comments

  resources :artists do # , #shallow: true do
    resources :comments # , :only => [:index, :show, :new, :edit]
  end

  resources :artists do # , #shallow: true do
    resources :recording_sessions # , :only => [:index, :show, :new, :edit]
  end

  # namespace :api do
  #   namespace :v1 do
  #     resources :artists
  #   end
  # end
end
