Rails.application.routes.draw do
  get 'welcome/index'
  resources :expend
  root 'welcome#index'
end
