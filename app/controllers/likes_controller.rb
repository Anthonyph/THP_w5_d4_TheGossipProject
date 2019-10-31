class LikesController < ApplicationController
  before_action :authenticate_user, only: [:new]
  def new
  end

  def create
    user= current_user
    
    @gossip = Gossip.find(params[:gossip_id]) 
    
      
    @like = Like.new(user_id: user.id, gossip_id: @gossip.id, yesno: true ) 

    if @like.save # essaie de sauvegarder en base @gossip

        
      redirect_to gossips_path # si ça marche, il redirige vers la page d'index du site
    else
      redirect_to gossip_path  # sinon, il render la view new (qui est celle sur laquelle on est déjà)
    end 
  end


  def destroy
    @detail = Like.find(params[:like_id])
    @detail.destroy 
    redirect_to gossips_path

  end
end
