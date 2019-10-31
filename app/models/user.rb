class User < ApplicationRecord
	has_secure_password
	has_many :gossips
	has_many :comments
	belongs_to :city

	validates :email,
  	presence: true,
  	uniqueness: true,
		format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }

	validates :password,
		presence: true,	
		length:{ minimum: 6}

	def self.showall
		user_array = User.all					
		return user_array    		
	end
	#Permet d'afficher tout les users sous forme d'array

#	def self.find(id)
		
 #   user_array = self.showall
 #   index=id.to_i - 1 
 #   user_id = user_array[index]
    
#		return user_id 
#	end
	#Permet de trouver un user dans l'array en utilisant son id.
end
