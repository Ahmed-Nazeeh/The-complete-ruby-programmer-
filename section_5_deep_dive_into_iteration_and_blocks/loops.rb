# --------------------------using next-------------------------
# i = 0 

# loop do 
#     i = i + 1 
#     if (i % 2) == 1
#         puts "This is the number: #{i}"
#         next 
#     end
#     puts i   
#     break if i > 10
# end
# -----------------------------until loop---------------------

# i = 0 

# until i == 5 do 
#     puts i
#     i += 1
# end
# -------------------------while loop one line-----------------
# i = 0

# i += 1 while i < 10

# puts i
# ------------------------for loop-----------------------------

arr = [1,2,3,4,5,3,3,3,3] 

for i in arr do 
    if i == 3
        next
    end
    puts i 
end