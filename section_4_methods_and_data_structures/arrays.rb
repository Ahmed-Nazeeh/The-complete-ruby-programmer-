# a = [1,2,3]  

# b = Array.new(5, rand(5))

# p a 

# p b

# d = %w(a b c d e)

# p d

# words =  "my name is ahmed".split

# p words + ['1', '2']

# p words 

# p words.concat(['1', '2'])

# p words.reverse

# p words.pop

# p words

# p words.push("2")

# p words
# # --------------------------------------Retrieving Data-----------------------------------------------------------

# words = "my name is ahmed ".split 

# p words

# p words[1]

# p words[words.length - 1]

# -------------------------------------------------Retrieving Data(convienient methods)----------------------------------

words = ["my", "name", "is", "ahmed", "my"]

words.delete("my")

p words

p words.take(1)

# p words.pop
p words[4] #will not give error if not existing
p words.fetch(4)   #if choosed number exeding the array numbers will make error