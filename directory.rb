
#Let's put all students into an array
students = [
"Dr. Hannibal Lecter",
"Darth Vader",
"Nurse Ratched",
"Michael Corleone",
"Alex DeLarge",
"The WIcked Witch of the West",
"The Terminator",
"Freddy Krueger",
"The Joker",
"Joffrey Baratheon",
"Norman Bates"
]
#then we print them
puts "The students of Villains Academy"
puts "------------"
students.each do |student|
    puts student
end

#finally we print the total number of students

puts "Overall we have #{students.count} great students"
