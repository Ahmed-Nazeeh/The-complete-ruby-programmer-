# arr = ["c","c","c","c","b","b"]
# res = 1
# resarr = []
#  arr.each_with_index do |e, i|
#      if arr[i.to_i] == arr[i.to_i + 1]
#        res += 1
#        resarr << e
# end
# end
# p res
# p resarr
# def duplicate_count(text)
# arr = text.upcase.split("")
#   p arr
# res = 0
# arr.each_with_index do |e, i|
#   arr.each_with_index do |ele,x|
#     if e[i.to_i] == ele[x.to_i]
#       res += 1
#  end
# end
#  end
#    res
# end
# p duplicate_count("") # 0
# p duplicate_count("abcde") #0
# p duplicate_count("abcdeaa") # 1
# p duplicate_count("abcdeaB") #, 2)
# p duplicate_count("Indivisibilities")#, 2)

res = 0
a = [1,2,3,2,2,4,4].tally # => hash of repeativity
a.each do |k,v|
  if v > 1
    res += 1
  end
end
p res
