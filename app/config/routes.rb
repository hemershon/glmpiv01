Rails.application.routes.draw do

  namespace :backoffice do
    get 'dashboard/index'
  end
  namespace :site do
    get 'home/index'
  end
  root 'site/home#index'
  devise_for :members
  devise_for :admins
end
