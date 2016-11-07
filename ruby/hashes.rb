def ask_questions
   user_info = {:Name, :Age, :Child_num, :Decor_theme}
   puts "Hello, please fill out this short survey about your client's preferences."
   puts "What is the name of your client?"
   user_info[:Name] = gets.chomp
 
 
 
 
 def assign_to_hash
   user_info = {"name" => nil, "age" => nil, "number_of_children" => nil, "desired_decor_theme" => nil}
   user_info.each do |key, value|
       puts "What is your client's #{key}?"
       user_info[key] = gets.chomp
       puts "Your client's #{key} is #{user_info[key]}."
     end
     p user_info
     puts "Would you like to update any information? (y/n)"
     response = gets.chomp.capitalize
 
     if response == "Yes"
       puts "Which information would you like to update: name, age, number of children, or desired decor theme?"
       choice = gets.chomp
       if choice == "name"
         puts "Name would you like to input?"
         user_info["name"] = gets.chomp
         puts "Your newly inputted name is #{user_info["name"]}."
       elsif choice == "age"
         puts "Age would you like to input?"
         user_info["age"] = gets.chomp
         puts "Your newly inputted name is #{user_info["age"]}."
       elsif choice == "number of children"
         puts "How many number of children would you like to input?"
         user_info["number_of_children"] = gets.chomp
         puts "Your newly inputted name is #{user_info["number_of_children"]}."
       elsif choice == "desired decor theme"
         puts "What desired decor theme would you like to input?"
         user_info["desired_decor_theme"] = gets.chomp
         puts "Your newly inputted name is #{user_info["desired_decor_theme"]}."
       else
         puts "We couldn't help you update your desired information."
       end
         p "This is your updated user info: #{user_info}."
       else
       	 p "This is your current user info: #{user_info}."
     end
	end
