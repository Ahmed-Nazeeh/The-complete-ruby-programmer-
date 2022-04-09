students = [
    { name: "Bob", age: 18 },
    { name: "Alice", age: 20}
    ]

    # The `find_by_name` method is here
def find_by_name(students_collection, name)
    # the code to find the student goes here
    students_collection.select do |student|  
        if student[:name] == name
            return "Student found: #{student}"
        else
            return "Student not found: #{name}"
        end
    end
end
   
    # The testing goes here
     puts find_by_name(students, 'Bob')
     puts find_by_name(students, 'Carol')
   

# Student found: { "name" => "Bob", "age" => 18}
# Student not found: "Carol"