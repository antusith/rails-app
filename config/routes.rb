Rails.application.routes.draw do
  resources :articles
  
  root          to: "pages#home"

  get 'about',  to: 'pages#about'
  get 'signup', to: 'users#new'

  resources :users, except: [:new]
end
