class WelcomeController < ApplicationController
  def show
    
    @name= params[:id]

    @array= Gossip.showall
    
    
  end
end
