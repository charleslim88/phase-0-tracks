class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end


 
   def speak(integer)
     integer.times do
       p "Woof!"
     end
 
   def roll_over
     p "*roll over*"
   end
 
   def dog_years(year)
     dog_year = 7
     dog_years = dog_year * year
     p dog_years
   end
 
   def shake
     puts "shake shake shake"
   end
 
   def initialize
     p "Initializing a new puppy instance..."
   end
