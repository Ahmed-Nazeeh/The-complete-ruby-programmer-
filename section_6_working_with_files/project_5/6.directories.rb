puts Dir.pwd

path = "F:/LEARN_RUBY/Ruby/Complete-ruby-programmer-master-ruby/6.working_with_files/project_5/"
# if Dir.exist?(path)
#   Dir.chdir(path)
# end
# puts "Files in #{Dir.pwd} are: "
# Dir.entries(path).each {|i| puts "the file name is: " + i}

p Dir.exist?(path)
