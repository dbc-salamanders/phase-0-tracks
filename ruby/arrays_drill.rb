##Initialize an empty array and store it in a variable (you can choose the name). Print the variable using p.

larkin_array = []
p larkin_array

##Add five items to your array. Print the array.

=begin
larkin_array << "Ireland"
larkin_array << "Wales"
larkin_array << "Croatia"
larkin_array << "Italy"
larkin_array << "Northern Ireland"
=end

##OR

larkin_array.push("Ireland", "Wales", "Croatia", "Italy", "Northern Ireland")

##Delete the item at index 2. Print the array.

larkin_array.delete_at(2)
p larkin_array

##Insert a new item at index 2. Print the array.

larkin_array.insert(2, "Serbia")
p larkin_array

##Remove the first item of the array without having to refer to its index. Print the array.

larkin_array.delete("Ireland")
p larkin_array

##Ask the array whether it includes a certain item. Print the result of this method call (labeled so it prints as more than just an isolated boolean value without any context.)

if larkin_array.include?("Ireland" && "Northern Ireland")
  puts "Ireland is united in this array!"
else
  puts "Ireland remains divided..."
end

##Initialize another array that already has a few items in it.

middle_east = ["Lebanon", "Jordan", "Israel", "Yemen"]

##Add the two arrays together and store them in a new variable. Print the new array.

emea = middle_east + larkin_array

p emea