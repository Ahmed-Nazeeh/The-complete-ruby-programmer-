# arr = [1,2,3,4,5]

# arr.each {|element| puts element}

# i = 0
#   until i == 4 do 
#       i += 1
#       puts ("*" * i)
#   end


# i = 0 
# while i < 10 do
# i += 1
# puts i if (i % 2) == 0
# end

# i = 0
#     while i < 4
#         i += 1
#     puts i
# # end
# ------------------Blocks---------------------------

# arr = [1,2,3,4,5]  

# arr.each {|i| puts i} # one line iteration

# equal

# def puts_element(element) 
#     puts element 
# end

# for i in arr 
#     puts_element(i)
# end

# # equal

# def puts_elemet(element)
#     yield element
# end

# for i in arr 
#     puts_elemet(i) {|j| puts j}
# end

# arr.each do |element|
#     new_elements = element * 2
#     puts new_elements
# end
# -------------------iteration over range------------------------

# (1..5).each do |element|
#     puts element
# end

# 1.upto(5) do |element|
#     puts element
# end

# 5.times { |i| puts "Hello world! #{i+1}" }
    
# ------------------------iteratin using step---------------------

(0..100).step(10) {|i| puts i}