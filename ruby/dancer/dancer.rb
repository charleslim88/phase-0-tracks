class Dancer

	def initialize(name)
		@name = name
		@age = 33
	end

	def name
		@name
	end

	def age(age)
		puts "Misty's Copeland is #{age}"
		"Misty's Copeland is #{age}"
	end

	def age
		@age
	end

	def age=(new_age)
		@age = new_age
	end

	def pirouette(twirls)
		pirouette == twirls
	end

	def bow
		bow == *bows*
	end

end

dancer = Dancer.new("Misty Copeland")
dancer.age(33)
dancer.age = 34

