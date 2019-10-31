class Gossip < ApplicationRecord
	belongs_to :user
	has_many :comments
	has_many :likes

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

	



end
