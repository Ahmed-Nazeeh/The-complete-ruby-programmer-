arr = ['fish', 'pizza', 'chicken', 'sports']

arr_enumerator = arr.each 

arr_enumerator.each_with_index do |ele, i|
    puts "item is: #{ele} and its index is: #{i}"
end

# ___________same same as below______________

arr.each_with_index do |ele , index|
    puts ele + " " + index.to_s
end