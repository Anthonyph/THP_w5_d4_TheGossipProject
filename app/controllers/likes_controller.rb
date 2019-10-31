class LikesController < ApplicationController
  before_action :authenticate_user, only: [:new]
  def new
  end

  def create
    user= current_user
    
    @gossip = Gossip.find(params[:gossip_id]) 
    
      
    @like = Like.new(user_id: user.id, gossip_id: @gossip.id, yesno: true ) 

    if @like.save # essaie de sauvegarder en base @gossip

        
      redirect_to gossip_path(@gossip.id) # si ça marche, il redirige vers la page d'index du site
    else
      redirect_to gossip_path(@gossip.id)  # sinon, il render la view new (qui est celle sur laquelle on est déjà)
    end 
  end


  def destroy
    @gossip = Gossip.find(params[:gossip_id]) 
    @like = Like.find_by(gossip_id: params[:gossip_id], user_id: current_user.id).destroy

    redirect_to gossip_path(@gossip.id)
  end
end
