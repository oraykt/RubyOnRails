Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'
  get 'about', to: 'pages#about'

  resources :articles

  get 'signup', to: 'users#new'
  # resources :users, except: [:new]
  resources :users, only: [:create, :edit, :index, :update, :show, :destroy]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # resources :categories, except: [:destroy]
  resources :categories, only: [:new, :create, :edit, :update, :show, :index]
end
