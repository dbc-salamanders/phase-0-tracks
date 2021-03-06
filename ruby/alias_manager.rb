## Define a method that takes a string as a variable
## Convert the string into an array using .split. Store array as variable name_array
## Reverse the order of the name using .reverse!
## Store first_name and last_names as separate variables (strings)
## Use .split('') to identify each character in first_name and last_name
## Store split names as individual variables
## Iterate through each array. If vowel, change value to next value. Else, .next. Use map! to make permanent
## Join altered arrays and store in new array
## Join new array to print altered name

def alias_manager(name)
  name_array = name.split
  name_array.reverse!
  first_name = name_array.at(0)
  last_name = name_array.at(1)
  
  first_name_split = first_name.split('')
  last_name_split = last_name.split('')

first_name_split.map! do |letter|
	if letter == "a"
		"e"
	elsif letter == "e"
		"i"
	elsif letter == "i"
		"o"
	elsif letter == "o"
		"u"
	elsif letter == "u"
		"a"
	else letter.next
	end
end

last_name_split.map! do |letter|
	if letter == "a"
		"e"
	elsif letter == "e"
		"i"
	elsif letter == "i"
		"o"
	elsif letter == "o"
		"u"
	elsif letter == "u"
		"a"
	else letter.next
	end
end
	
new_name = []
new_name << first_name_split.join
new_name << last_name_split.join
new_name_string = new_name.join(" ")
p new_name_string
end

##Create a user interface
## Until the user indicates that they are done, repeat the loop
## Initiate an empty array
## Store original name as key in the array
## Store modified name (call method above) as value

	name_hash = {}
	done = false
	until done == true
	puts "Please enter your first and last name"
	  name = gets.chomp
	  name_hash[name] = alias_manager(name)
	
	puts "Would you like to repeat?"
	  reply = gets.chomp
	  if reply = ["No", "no", "n", "N"].include?(reply)
	    done = true
	  else
	    done = false
	  end
	end

## Iterate over each key-value pair in name_hash
## Print the modified name and the original name

name_hash.each do |original, modified|
	puts "#{modified} is actually #{original}!"
end