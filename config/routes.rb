Rails.application.routes.draw do
  resources :politicians do
    resources :donations, only: [:index, :show, :new]
  end
  resources :donations
  resources :voters
  resources :sessions, only: [:new, :create, :destroy]
  root 'welcome#greet'

  get '/login', to: 'sessions#new'
  get '/auth/facebook/callback' => 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
