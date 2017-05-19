Rails.application.routes.draw do
  
  devise_for :users
  resources :hospitals do
    resources :reviews, except: [:show, :index]
  end

  get 'pages/Hospitals'

  get 'pages/Labs'

  get 'pages/Doctors'

  get 'pages/about'

  get 'pages/contact'
  
  root'hospitals#index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
