class City < ApplicationRecord
  has_many :users

  def self.showall
		city_array = City.all					
		return city_array    		
	end
	#Permet d'afficher tout les city sous forme d'array

	def self.find(id)
		
    city_array = self.showall
    index=id.to_i - 1 
    city_id = city_array[index]
    
		return city_id 
	end

end
