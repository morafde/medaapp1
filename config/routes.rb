Rails.application.routes.draw do
  resources :reviews
  devise_for :users
  resources :hospitals
  get 'pages/Hospitals'

  get 'pages/Labs'

  get 'pages/Doctors'

  get 'pages/about'

  get 'pages/contact'
  
  root'hospitals#index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
