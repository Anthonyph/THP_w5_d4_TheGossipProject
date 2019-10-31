class CommentsController < ApplicationController
  before_action :authenticate_user, only: [:new]
  def edit
  end

  def show
    @array_coms = Comment.showall
    @com = Comment.where(params['id'])
    @detail = Gossip.find(params['id']) 
    
  end

  def new 
    @useranonymous = User.find(1)

	end

  def create
    user= current_user
    
    @gossip = Gossip.find(params[:gossip_id]) 
    
      
    @comment = Comment.new(user_id: user.id, gossip_id: @gossip.id,'content' => params[:content]) 

    if @comment.save # essaie de sauvegarder en base @gossip

        
      redirect_to gossips_path # si ça marche, il redirige vers la page d'index du site
    else
      render new_gossip_comment_path  # sinon, il render la view new (qui est celle sur laquelle on est déjà)
    end 
  end
end
