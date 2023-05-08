Rails.application.routes.draw do
  get 'contact/contact'
  get '/contact', to: 'contact#contact'
  get 'team/team'
  get '/team', to: 'team#team'
  get 'static_pages/home'
  root 'static_pages#home'
  get '/home', to: 'static_pages#home'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
