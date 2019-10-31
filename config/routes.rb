Rails.application.routes.draw do
  
  
   
  
  
  resources :sessions, only: [:new, :create, :destroy]
  resources :gossips  
  resources :comments
  resources :users
  resources :cities
  get '/welcome/:first_name/', to: "welcome#name"
  get '/team', to: "static_pages#team"
  get '/contact', to: "static_pages#contact"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # as:'detail_gossip' permet d'ajouter un préfixe à la route, ce qui servira pour faire un lien vers la route en l'ajoutant au path
end
