# frozen_string_literal: true

Rails.application.routes.draw do
  get '/customer', to: 'customer#index'
  get '/customer/alphabetized', to: 'customer#alphabetized'
  get '/customer/missing_email', to: 'customer#missing_email'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'customer#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
