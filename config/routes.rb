Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  
  resources :classifieds do
    get 'inquiry', to: 'inquiry#classified_index'
    post 'inquiry/confirm', to: 'inquiry#classified_confirm'
    post 'inquiry/thanks', to: 'inquiry#classified_thanks'
  end
  resources :areas, only: [:show, :index]
  resources :categories, only: [:show, :index]
  resources :items, only: [:show]
  
  get 'inquiry', to: 'inquiry#index'
  post 'inquiry/confirm', to: 'inquiry#confirm'
  post 'inquiry/thanks', to: 'inquiry#thanks'
end