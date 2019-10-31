class GossipsController < ApplicationController
  before_action :authenticate_user, only: [:new,:show]
  def index
    @array= Gossip.showall
    
  end
  
  def show
    @detail = Gossip.find(params['id']) 
    @com = Comment.where(params['id'])
    @array_coms = Comment.showall
    @nblikes = Like.where(gossip_id: @detail.id).count
  p @nblikes

  end

  def new 
    @useranonymous = User.find(1) 
    @gossip = Gossip.new
     
	end
  

  def create
    user=User.find_by(id:session[:user_id])
    @gossip = Gossip.new( user_id: user.id,
                          'title' => params[:title],
                          'date' => params[:date],
                          'content' => params[:content]) # avec xxx qui sont les données obtenues à partir du formulaire

    if @gossip.save # essaie de sauvegarder en base @gossip

      @array= Gossip.showall   
      render "index.html.erb" # si ça marche, il redirige vers la page d'index du site
    else
      render new_gossip_path  # sinon, il render la view new (qui est celle sur laquelle on est déjà)
    end 
  end 

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    gossip_params= params.require(:gossip).permit(:title,:date,:content)
    if @gossip.update(gossip_params)
      redirect_to gossips_path
    else
      render :edit
    end
  end

  def destroy
    @detail = Gossip.find(params['id'])
    @detail.destroy 
    redirect_to gossips_path
  end

  private

  def authenticate_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to new_session_path
    end
  end
  

end
