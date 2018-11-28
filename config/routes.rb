Rails.application.routes.draw do
  resources :donations
  resources :politicians
  resources :voters #TODO --> nest donations under voters

  root 'welcome#greet'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
