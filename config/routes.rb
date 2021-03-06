Rails.application.routes.draw do
  
  

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks"}
  resources :hospitals do
    collection do
      post :import

      get 'search'
    end
    resources :reviews, except: [:show, :index]
    end
  




  get 'pages/Hospitals'

  get 'pages/Labs'

  get 'pages/Doctors'

  get 'pages/about'

  get 'pages/contact'

  #get '/auth/facebook/callback' => 'sessions#create'

  #get '/signout' => 'sessions#destroy', :as => :signout

  #get '/signin' => 'sessions#new', :as => :signin

  
  root 'hospitals#index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
