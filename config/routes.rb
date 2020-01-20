Rails.application.routes.draw do
  resources :jobs
  get 'dashboard/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#index'
  get 'users' => 'users#index', as: :users_path
  get 'dashboard' => 'dashboard#index', as: :dashboard_path
end
