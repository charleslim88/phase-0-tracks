class Santa
   attr_reader :ethnicity, :gender, :reindeer_ranking
   attr_accessor :age
 
   def initialize (ethnicity, gender, age = 0)
     puts "Initalizing Santa"
     @ethnicity = ethnicity
     @gender = gender
     @reindeer_ranking = (Rudolph Dasher Dancer Prancer Vixen Comet Cupid Donner Blitzen)
     @age = age
   end
 
   def speak
     puts "Ho, ho, ho! Haaaappy holidays!"
   end
 
   def eat_milk_and_cookies (cookie_type)
     puts "That was a good #{cookie_type}"
   end
 
   def celebrate_birthday
     @age += 1
   end
 
   def get_mad_at (bad_reindeer)
     i = 0
     deleted_reindeer = nil
     while deleted_reindeer != @reindeer_ranking[i]
       if @reindeer_ranking[i] == bad_reindeer
         deleted_reindeer = @reindeer_ranking.delete_at(i)
         @reindeer_ranking << deleted_reindeer
       end
       i += 1
     end
   end
 end
 
 # **Driver Codes**
 def ethnicity_gender
     puts "What is your santa's ethnicity?"
     ethnicity = gets.chomp
     puts "What is your santa's gender?"
     gender = gets.chomp
     return Santa.new(ethnicity, gender)
 end
 
 def random_santa
   possible_genders = ["Female", "Male", "Agender", "Bigender", "Gender fluid", "N/A"]
   possible_ethnicities = ["White", "Black", "Asian", "Latino", "Mystical"]
   ethnicity = possible_ethnicities.sample
   gender = possible_genders.sample
    age = [0.sample]
   return Santa.new(ethnicity, gender, age)
 end
 
 # **Driver Codes**
 puts "How many santas do you want to make?"
 number_of_santas = gets.chomp.to_i
 puts "Do you want to generate them randomly? (y/n)"
 random_santas = gets.chomp
 santas = []
 
 if random_santas == "y"
   number_of_santas.times {santas << generate_random_santa}
 else
   number_of_santas.times {santas << make_by_hand}
 end
 
 santas[0].age=(68)
 print santas
