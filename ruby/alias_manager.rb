## Define a method that takes a string as a variable
## Convert the string into an array using .split. Store array as variable name_array
## Reverse the order of the name using .reverse!
## Store first_name and last_names as separate variables (strings)
## Declare vowels as a variable (string) within the method
## Use .split('') to identify each character in first_name and last_name
## Store split names as variables in split_name_array
## Iterate through each array in split_name_array
## Iterate through each string in vowel array. Use .split('') to seperate individual characters

def alias_manager(name)
##  vowels = "aeiou"
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
new_name_string = new_name * " "
end


  
alias_manager("Aaron Larkin")