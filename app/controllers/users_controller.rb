class UsersController < ApplicationController
  def show
    @profil = User.find(params['id'])
  end
  def new
    @user = User.new
  end
  def create
    city=City.find(1)
    @user = User.new( city_id: city.id, 
                      'email': params[:email],
                      'password': params[:password],
                      'name':params[:name])
    if @user.save # essaie de sauvegarder en base @gossip

         
      redirect_to gossips_path # si ça marche, il redirige vers la page d'index du site
    else
      render :new  # sinon, il render la view new (qui est celle sur laquelle on est déjà)
    end 
                          
  end
  def destroy
  end
end
