Rails.application.routes.draw do
  get 'users/new'
  get '/signup',   to: 'users#new'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  post '/signup',  to:  'users#create'
  root 'static_pages#home'
  resources :users  
end