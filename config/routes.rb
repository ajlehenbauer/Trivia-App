Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  root 'welcome#index'
  match '/profile',    to: 'welcome#profile',    via: 'get'
  match '/signup',  to: 'users#new',            via: 'get'

  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
