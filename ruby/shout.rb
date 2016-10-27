module Shout
	def yell_angrily(words)
		puts "#{words}!"
	end
end	


class Babies
	include Shout
end

class Dogs
	include Shout
end


babies = Babies.new
babies.yell_angrily("WAHHHH")
humans = Dogs.new
humans.yell_angrily("RUFF")