Rails.application.routes.draw do
  resources :purchases, only: [:new, :create, :show]

  root 'purchases#new'
end
