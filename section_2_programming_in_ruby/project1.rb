
require 'date'
#The first output line will go after this comment
#In days
print "My Age in days: "
#puts ((2021-1985)*365)
puts (Date.today-Date.civil(1985,8,25))
 
#The second output line will go after this comment
#In hour
print "My Age in hours: "
#puts ((2021-1985)*365*24)
puts ((Date.today-Date.civil(1985,8,25))*24)
 
#The third output line will go after this comment
#In minutes
print "My Age in minutes: "
#puts ((2021-1985)*365*24*60)
puts ((Date.today-Date.civil(1983,8,17))*24*60)


