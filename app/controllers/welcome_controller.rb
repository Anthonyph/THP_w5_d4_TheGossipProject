class WelcomeController < ApplicationController
  def name
    
    @name= params["first_name"]

    @array= Gossip.showall
    
    
  end
end
