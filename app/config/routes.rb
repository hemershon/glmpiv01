# == Route Map
#

Rails.application.routes.draw do
  namespace :site do
    resources :news
  end
  namespace :backoffice do
    resources :balancesheets, except: [:show, :destroy]
    resources :reports, except: [:show, :destroy]
    resources :stores, except: [:destroy]
    resources :dashboard
  end

  namespace :site do
    get 'home/index'
  end
  root 'site/home#index'
  devise_for :members
  devise_for :admins
end
