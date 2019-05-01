Rails.application.routes.draw do
  
  get 'gossips/index'
  get 'gossips/new'
  get 'gossips/edit'
  get 'gossips/show'  
  
  resources :gossips

get 'gossips/edit/done', to: 'gossips#done'



  get '/team', to: 'static#team'
  get '/contact', to: 'static#contact'
  get '/home/:id', to: 'static#home_id'
  get '/home', to: 'static#home'
  get '/user/:nbr', to: 'static#user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

