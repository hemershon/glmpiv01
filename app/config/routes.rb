Rails.application.routes.draw do
  namespace :site do
    resources :news
  end
  namespace :backoffice do
    resources :balancesheets do
      root :to => 'balancesheets#index'
    end
    resources :reports do
      root :to => 'reports#index'
    end
    resources :stores, only: [:index, :new, :edit, :show]
    resources :dashboard
  end

  namespace :site do
    get 'home/index'
  end
  root 'site/home#index'
  devise_for :members
  devise_for :admins
end

# == Route Map
#
