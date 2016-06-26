## Define a method to allow designer to enter information.
## In method, initiate an empty hash
## Prompt the user to enter information
## Store each response as a value corresponding to a specific key
## As final question, ask user if they would like to change any field
## If user enters "Yes", changes = true. Else, changes = false.
## Ask user which field they would like to change
## Store response as value corresponding to key the user gives as response

=begin
def design_method
  applicant = {}
  puts "Please enter your name"
  applicant[:name] = gets.chomp.to_s
  puts "What kind of style would you like for your home?"
  applicant[:style] = gets.chomp.to_s
  puts "What is your budget for this project?"
  applicant[:budget] = gets.chomp.to_i
  puts "Do pets live in your home?"
  pet_input = gets.chomp
    if pet_input == ["Yes", "yes", "Y", "y"]
      applicant[:pets] = true
    else
      applicant[:pets] = false
    end
  puts "Would you like to make any changes to your responses?"
    make_changes = gets.chomp
      case make_changes
      when make_changes == "Yes"
        changes = true
        puts "Which field would you like to change?"
        change_field = gets.chomp
        puts "What would you like the value of #{change_field} to be?"
        applicant[:change_field] = gets.chomp
      else
        changes = false
      end
  puts applicant
  return applicant
end
design_method
=end

## Define a method to allow designer to enter information.
## Initiate an empty hash
## Prompt the user to enter information
## Store each response as a value corresponding to a specific key
## As final question, ask user if they would like to change any field
## If user enters "Yes", changes = true. Else, changes = false.
## Ask user which field they would like to change
## Store response as value corresponding to key the user gives as response

  applicant = {}
  puts "Please enter your name"
  applicant[:name] = gets.chomp.to_s
  puts "What kind of style would you like for your home?"
  applicant[:style] = gets.chomp.to_s
  puts "What is your budget for this project?"
  applicant[:budget] = gets.chomp.to_i
  puts "Do pets live in your home?"
  pet_input = gets.chomp
  likes_pets = pet_input == "yes"
  applicant[:likes_pets] =  likes_pets
  fields = applicant.keys
  
  puts "Would you like to make any changes to your responses?   (yes or no)"
  make_changes = gets.chomp
  
      case make_changes
      when "yes"
        puts "Which field would you like to change? Here are your options: #{fields.join(", ")}."
        change_field = gets.chomp.to_sym
        if change_field == :name
          puts "Enter your name"
          name = gets.chomp
          applicant[:name] = name
        elsif change_field == :style
          puts "What kind of style would you like for your home?"
          style = gets.chomp
          applicant[:style] = style
        elsif change_field == :budget
          puts "What is your budget for this project?"
          budget = gets.to_i
          applicant[:budget] = budget
        elsif change_field == :likes_pets
          puts "Do pets live in your home? (y/n)"
          likes_pets = gets.chomp
          applicant[:likes_pets] = likes_pets
        else
          puts "Not an option."
        end
      when "no"
        puts "OK, good! We are done."
      else 
        puts "I'm sorry, I didn't get that..."
      end
puts applicant
return applicant
