Rails.application.routes.draw do
  get 'user/user'
  root to: redirect('/gossipform')
  resources :gossipform
  resources :sessions, only: [:new, :create, :destroy]
  
  get '/team', to: 'team#team'
  get '/contact', to: 'contact#contact'

  get '/sessions', to: 'sessions#sessions'

end
