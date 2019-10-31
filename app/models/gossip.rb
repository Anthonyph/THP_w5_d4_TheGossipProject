class Gossip < ApplicationRecord
	belongs_to :user
	has_many :comments

	validates :content,
  	presence: true
	validates :title,
		presence: true,
		length: { in: 3..14 }
	def self.showall
		gossip_array = Gossip.all					
		return gossip_array   		
	end
	#Permet d'afficher tout les gossips sous forme d'array

	def self.find(id)
		
    gossip_array = self.showall
    index=id.to_i - 1 
		gossip_id = gossip_array[index]
		    
		return gossip_id 
	end
	#Permet de trouver un Gossip dans l'array en utilisant son id.



end
