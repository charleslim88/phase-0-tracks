vowels = (a e i o u)
 	alias_list = Hash.new
 
 def alias_manager (agent_name)
   alias_list[agent_name] = letter_switcher(agent_name)
 end
 
 def letter_switcher(agent_name)
   reverse_name = agent_name.split(' ').reverse.join(' ')
   new_alias = []
   reverse_array = reverse_name.split
   reverse_array.each do |letter|
     if letter == letter.upcase
       if vowels.include?(letter.downcase)
         new_alias << vowel_switcher(letter).upcase
       else
         new_alias << consonant_switcher(letter).upcase
      else
       if vowels.include?(letter.downcase)
         new_alias << vowel_switcher(letter)
      else
         new_alias << consonant_switcher(letter)
       end
     end
   end
   return new_alias.join
 end
 
 def vowel_switcher (letter)
   i = 0
   while i <= (vowels.length)
     if vowels[i] == letter.downcase
       return vowels[i + 1]
       i += 1
     elsif letter.downcase == "a"
         return vowels[0]
         i += 1
     else
       i += 1
     end
   end
 end
 
 def interface
   puts "What is your name?"
   agent_name = gets.chomp
   puts "Your new alias is '#{letter_switcher(agent_name)}'. Do you want to keep this?"
   save_to_alias_list = gets.chomp
   if save_to_alias_list == "yes"
     alias_manager(agent_name)
     puts "Do you want to add another name?"
     another_agent = gets.chomp
     if another_agent == "yes"
       interface
     else
       print_alias_list
     end
   end
 end
