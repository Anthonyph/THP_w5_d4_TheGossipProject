class CitiesController < ApplicationController
  def show
    @ville = City.find(params['id']) 
    @array= Gossip.showall
    @users = User.showall

  end

end
