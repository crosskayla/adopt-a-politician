Rails.application.routes.draw do
  resources :donations
  resources :politicians do
    resources :donations
  end
  resources :voters
  resources :sessions, only: [:new, :create, :destroy]
  root 'welcome#greet'

  get '/login', to: 'sessions#new'
  delete '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
