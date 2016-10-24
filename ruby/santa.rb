class Santa

	def initialize(name)
		@name = name
		puts "Santa's name is #{@name}"
		@gender = "Male"
		@ethnicity = "Korean" 
	end

	def gender(gender)
		puts "Sants's gender is #{gender}"
	end

	def ethnicity(ethnicity)
		puts "Santa's ethnicity is #{ethnicity}"
	end
	

santas_age = [0]
reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]


end

santa = Santa.new("Joe")
santa.gender("Female")
santa.ethnicity("Irish")