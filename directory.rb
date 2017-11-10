
#Let's put all students into an array

def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    #create an empty array
    students = []
    #get the first name
    name = gets.chomp
    puts "Which cohort are they in?"
    cohort = gets.chomp
    puts "What hobby do they have?"
    hobby = gets.chomp
    puts "How tall are they in cm?"
    height = gets.chomp.to_i
    # while the name is not empty, repeat this code
    while !name.empty? do
            #add the student hash to the array
            students << {name: name, cohort: cohort, hobby: hobby, height: height}
            puts "Now we have #{students.count} students"
            #get another name from the user
            puts "Next name?"
            name = gets.chomp
            if name.empty? 
                break
            end
            puts "Which cohort are they in?"
            cohort = gets.chomp
            puts "And their hobby?"
            hobby = gets.chomp
            puts "Their height in cm?"
            height = gets.chomp.to_i
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
    students.each do |student|
        #don't know a way to directly access characters of a symbol (:name)
        #so have to convert to string and select the character that way
        if student[:name].to_s.length < 12
                puts "#{num}." + "#{student[:name]}".center(20) + 
                " #{student[:cohort]} cohort".center(20) +
                "hobby: #{student[:hobby]}".center(20) +
                "height: #{student[:height]}cm ".center(20)
                num += 1
        end
        
    end
end

def print_footer(students)
    puts "Overall we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)