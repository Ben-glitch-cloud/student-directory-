

students = [
{name: "Dr. Hannibal Lecter", cohort: :november},
{name: "Darth Varder", cohort: :novemeber},
{name: "Nurse Ratched", cohort: :november},
{name: "Micheal Corleone", cohort: :novemebr},
{name: "Alex DeLarge", cohort: :novemeber},
{name: "The Wiched Witch of the West", cohort: :november},
{name: "Terminator", cohort: :november},
{name: "Freddy Krueger", cohort: :november},
{name: "The Joker", cohort: :november},
{name: "Joffrey Baratheon", cohort: :november},
{name: "Norman Bates", cohort: :november}
]



def input_students
  puts "Please enter the names of the studets"
  puts "To finish, just hit thr return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print(students)
  @students.each_with_index do |student, index|
      puts "#{index + 1}. #{student[:name]} (#{student[:cohort]})"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def print_header
  puts ("The student of Villains Academy")
  puts ("------------")
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

interactive_menu

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "9"
      exit
    else
    puts "I don't know what you mean, try again"
  end
end

def show_students
  print_header
  print_students_list
  print_footer
end
