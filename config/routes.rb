Rails.application.routes.draw do
  root to: redirect('/gossipform')
  resources :gossipform
  
  get '/team', to: 'team#team'
  get '/contact', to: 'contact#contact'
end
