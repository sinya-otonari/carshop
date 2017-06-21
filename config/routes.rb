Rails.application.routes.draw do
  resources :cars
  resources :sales
  resources :employees
  root 'sales#index'
end
