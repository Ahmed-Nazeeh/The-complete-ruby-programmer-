hash = {name: :ahmed, age: 36} 

hash.each do |k|
    p k
end

hash.each do |key, value|
    puts "They key is: #{key} and the value is: #{value}"
end