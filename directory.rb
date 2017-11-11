#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby

#Let's put all students into an array
@students = []
def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    #get the first name and other information
    name = gets.chomp.to_sym
    if !name.empty?
        puts "Which cohort are they in?"
        cohort = gets.chomp.to_sym
        puts "What hobby do they have?"
        hobby = gets.chomp.to_sym
        puts "How tall are they in cm?"
        height = gets.chomp.to_sym
    end
    # while the name is not empty, repeat this code
    while !name.empty? do
            #add the student hash to the array
            @students << {name: name, cohort: cohort, hobby: hobby, height: height}
            #message for how many students in the array
            $no_of_students = @students.count
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
            name = gets.chomp.to_sym
            #exit loop if no name given
            if name.empty? 
                break
            end
            puts "Which cohort are they in?"
            cohort = gets.chomp.to_sym
            if cohort.empty?
                cohort = "not given"
            end
            puts "And their hobby?"
            hobby = gets.chomp.to_sym
            if hobby.empty?
                hobby = "None given"
            end
            puts "Their height in cm?"
            height = gets.chomp.to_sym
            if height.to_s.empty?
                height = "Not given"
            end
    end
end
    
def interactive_menu
    loop do 
        # 1. print menu and ask user what to do
        print_menu
         # 2. read the input and sort it into a variable
        process(gets.chomp)
        # 3. do what the user has asked
        
# 4. repeat from step 1 - use a loop function
    end
end

def show_students
    print_header
    print_student_list(@students)
    print_footer(@students)
end

def print_header
    if @students.count >= 1
        puts "The students of Villains Academy"
        puts "------------"
    end
end

def print_student_list(students)
    num = 1
    if students.count >= 1
        #option to select by cohort. Could be defined as a new method
        #students_selec = @students.select {|hash_in_array| hash_in_array[:cohort].to_s.downcase != "november"}
        students.each do |student|
            puts "#{num}." + "#{student[:name]}".center(20) +
           " #{student[:cohort]} cohort".center(20) +
           "hobby: #{student[:hobby]}".center(20) +
           "height(cm): #{student[:height]} ".center(20)
             num += 1
        end
    end
end

def print_footer(students)
    case $no_of_students
        when nil
            puts "We currently have no students!"
        when 1
            puts "Overall we have #{$no_of_students} great student!"
        else
            puts "Overall we have #{$no_of_students} great students!"
    end
end

def print_menu
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" #will be adding more items
end

def process(selection)
    case selection
        when "1"
            #input the students
            input_students
        when "2"
            #display the students
            show_students
        when "9"
            exit #causes the program to terminates
        else
            puts "I don't know what you meant, please try again"
    end
end



interactive_menu

