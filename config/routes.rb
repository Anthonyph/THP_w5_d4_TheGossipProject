Rails.application.routes.draw do
  root 'gossips#index'
  resources :team,  only: [:index]
  resources :contact,  only: [:index]
  resources :sessions, only: [:new, :create, :destroy]
  resources :gossips do 
    resources :comments
    resources :likes, only: [:new, :create, :destroy]
  end
  resources :users
  resources :cities, only: [:show]
  resources :welcome,  only: [:show]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # as:'detail_gossip' permet d'ajouter un préfixe à la route, ce qui servira pour faire un lien vers la route en l'ajoutant au path
end
