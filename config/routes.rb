Rails.application.routes.draw do

  namespace :site do
    get 'home/index'
  end
  root 'site/home#index'
  devise_for :members
  devise_for :admins
end
