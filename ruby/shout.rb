module Shout

	def yell_angrily(words)
	  words + "!!" + ":("
	end

	def yell_happily(words)
	  words + "!!" + ":)"
	end
end


class Babies
	include Shout
end

class Dogs
	include Shout
end


Barbie = Babies.new
Cudi = Dogs.new

puts Barbie.yell_angrily("Wahhhh")
puts Cudi.yell_happily("Ruffff")
