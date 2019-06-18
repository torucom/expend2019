Rails.application.routes.draw do
  resources :expends

  resources :expends do
    resources :pays
  end

  root 'expends#index'
end
