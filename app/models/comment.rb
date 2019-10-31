class Comment < ApplicationRecord
  belongs_to :gossip,optional: true
  belongs_to :user, optional: true

  def self.showall
		comment_array = Comment.all					
		return comment_array   		
	end
	#Permet d'afficher tout les gossips sous forme d'array

	def self.find(id)
		
    comment_array = self.showall
    index=id.to_i - 1 
		comment_id = comment_array[index]
		    
		return comment_id 
	end

end
