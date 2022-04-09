# arr = ['a', 'b', 'c', 'd']

# arr.each_with_index do |element, index|
#     arr[index] = index
# end

# puts arr


# hash = {name: :ahmed, age: 36} 

# hash.each do |key, value|
#     hash[key] = "crack"
# end

# p hash
# ------------------arrays, -map , select, reject-------------
# 1.
# arr = ['red', 'green', 'yellow']

# arr.each do |ele|
#     arr.delete(ele) if ele == "yellow"
# end

# p arr

# 2.
# arr = ['red', 'green', 'yellow']

# arr2 = []

# arr.each do |ele|
#     if ele != "yellow"
#         arr2.push(ele)
#     end
# end

# p arr2

# we can do one and to with more easier methods

# arr = ['red', 'green', 'yellow']

# arr2 = arr.select {|ele| ele != "yellow"}

# p arr 

# p arr2

# arr = ['red', 'green', 'yellow']

# arr2 = arr.reject! {|ele| ele == "yellow"}

# p arr 

# p arr2

# then we can look on .map which is very versatile >>>> it can do operations while iteration

# arr = [1,2,3,4,5] 

# arr2 = arr.map! do |ele|
#     if ele == 5
#         ele * 2
#     else
#         ele  
#     end
# end

# p arr
# p arr2

# __________________________hash -map, select, reject____________________

hash = {one: 1, two: 2, three: 3} 

# hash2 = hash.select! {|k, v| v > 1} 

# p hash
# p hash2

# hash2 = hash.reject! {|k, v| v > 1} 

# p hash
# p hash2

hash2 = hash.map {|k, v| v * 100}  #but notice the output is array what if we need to back hash

p hash
p hash2

# and to achieve this will will do it manually as there is no method for this

hash2 = {}

hash.each {|k, v| hash2[k] = v * 100} 

puts hash2

