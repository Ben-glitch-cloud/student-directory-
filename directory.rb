

students = ["Dr. Hannibal Lecter", "Darth Varder", "Nurse Ratched",
"Micheal Corleone", "Alex DeLarge", "The Wiched Witch of the West",
"Terminator", "Freddy Krueger", "The Joker", "Joffrey Baratheon", "Norman Bates"]

def print_header
  puts ("The student of Villains Academy")
  puts ("------------")
end

def print(names)
names.each do |names|
  puts names
end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end


print_header
print(students)
print_footer(students)
