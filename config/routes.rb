Rails.application.routes.draw do
  get 'questions/new'

  get 'sessions/new'
  get 'users/new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  root 'welcome#index'
  match '/profile',    to: 'welcome#profile', via: 'get'
  match '/signup',  to: 'users#new', via: 'get'
  match '/newQuestion', to: 'questions#new', via: 'get'
  match '/answer', to: 'questions#answer', via: 'get'


  resources :users
  resources :questions

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
