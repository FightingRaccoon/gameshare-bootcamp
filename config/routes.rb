Rails.application.routes.draw do
  devise_for :users
 root 'home_page#index'
 namespace :player do 
  resources :clips, only: [:new, :create, :show]
 end
end
