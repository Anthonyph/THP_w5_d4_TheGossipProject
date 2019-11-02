class User < ApplicationRecord
	has_secure_password
	has_many :gossips
	has_many :comments
	has_many :likes
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

	def remember(remember_token)
    remember_digest = BCrypt::Password.create(remember_token)
    self.update(remember_digest: remember_digest)
	end
	
end
