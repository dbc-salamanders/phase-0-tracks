# In Ruby, require sqlite3
# Declare new database as variable - store as 'db'
# Create sqlite3 table
# Use string delimiter to create new sqlite table in the ruby file
# Declare fields in the table to be ID (primary integer), date (string), hours_slept (integer), refreshed (boolean)
# Declare ruby method sleep_hours
# sleep_hours takes 4 variables - db, date (string), hours_slept (integer), refreshed (boolean)
# In sleep_hours method, insert method variables into sqlite table
# Add user interface to collect data for sleep_hours
# Repeat until user types "quit"
# When done, retrieve data in table store as variable "sleep_history"
# Iterate over sleep_history to print data in a user-friendly manner

require 'sqlite3'

db = SQLite3::Database.new("sleep_log.db")

=begin
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS log (
    id INTEGER PRIMARY KEY,
    date VARCHAR (255),
    hours INTEGER,
    refreshed BOOLEAN
  )
SQL
=end

def sleep_hours(db, current_date, current_hours, current_refreshed)
  db.execute("CREATE TABLE IF NOT EXISTS log (id INTEGER PRIMARY KEY, date VARCHAR (255), hours INTEGER, refreshed BOOLEAN)")
  db.execute("INSERT INTO log (date, hours, refreshed) VALUES (?, ?, ?)", [current_date, current_hours, current_refreshed])
end

def get_history(db)
  db.execute("SELECT * FROM log")
end

done = false
until done == true do
puts "Please enter today's date."
current_date = gets.chomp.to_s
puts "How many hours did you sleep last night (round to nearest)?"
current_hours = gets.chomp.to_i
valid_input = false
until valid_input == true do
  puts "Did you wake up feeling refreshed? (y/n)"
  refreshed_response = gets.chomp.to_s
    if refreshed_response == "y"
      current_refreshed = "true"
      valid_input = true
    elsif refreshed_response == "n"
      current_refreshed = "false"
      valid_input = true
    else puts "I'm sorry, that's not valid input. Please enter your response as 'y' or 'n'"
      valid_input = false
    end
end
valid_end = false
until valid_end == true do
  puts "Type 'done' to repeat or 'continue' to enter another date's sleep log'"
  finish_input = gets.chomp.to_s
  if finish_input == "continue"
    done = false
    valid_end = true
  elsif finish_input == "done"
    done = true
    valid_end = true
  else  puts "I'm sorry, that's not valid input. Please enter 'done' or 'continue'"
    valid_end = false
  end
end
sleep_hours(db, current_date, current_hours, current_refreshed)
sleep_history = db.execute("SELECT * FROM log")
sleep_history.each do |night|
  if night.at(3) == "true"
  puts "On #{night.at(1)} you slept #{night.at(2)} hours and woke up feeling refreshed."
  elsif night.at(3) == "false"
  puts "On #{night.at(1)} you slept #{night.at(2)} hours and did not wake up feeling refreshed."
  end
end
end