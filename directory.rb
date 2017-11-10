#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby

#Let's put all students into an array

def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    #create an empty array
    students = []
    #get the first name and other information
    name = gets.chomp.to_sym
    puts "Which cohort are they in?"
    cohort = gets.chomp.to_sym
    puts "What hobby do they have?"
    hobby = gets.chomp.to_sym
    puts "How tall are they in cm?"
    height = gets.chomp.to_sym
    # while the name is not empty, repeat this code
    while !name.empty? do
            #add the student hash to the array
            students << {name: name, cohort: cohort, hobby: hobby, height: height}
            #message for how many students in the array
            $no_of_students = students.count
            case $no_of_students
                when 0
                    puts "We currently have no students!"
                when 1
                    puts "Now we have #{$no_of_students} student!"
                else
                    puts "Now we have #{$no_of_students} students!"
            end
            
            #get another name from the user and additional information
            puts "Next name?"
            name = gets.chomp
            #exit loop if no name given
            if name.empty? 
                break
            end
            puts "Which cohort are they in?"
            cohort = gets.chomp
            if cohort.empty?
                cohort = "not given"
            end
            puts "And their hobby?"
            hobby = gets.chomp
            if hobby.empty?
                hobby = "None given"
            end
            puts "Their height in cm?"
            height = gets.chomp.to_sym
            if height.to_s.empty?
                height = "Not given"
            end
    end
    #returns the array of students
    students
end
    


def print_header
    puts "The students of Villains Academy"
    puts "------------"
end

def print(students)
    num = 1
    students_selec = students.select {|hash_in_array| hash_in_array[:cohort].to_s.downcase == "november"}
    students_selec.each do |student|
        puts "#{num}." + "#{student[:name]}".center(20) + 
        " #{student[:cohort]} cohort".center(20) +
        "hobby: #{student[:hobby]}".center(20) +
        "height(cm): #{student[:height]} ".center(20)
         num += 1
    end
end

def print_footer(students)
    case $no_of_students
        when 0
            puts "We currently have no students!"
        when 1
            puts "Overall we have #{$no_of_students} great student!"
        else
            puts "Overall we have #{$no_of_students} great students!"
    end
end

students = input_students
print_header
print(students)
print_footer(students)