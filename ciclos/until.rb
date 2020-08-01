#!/usr/bin/env ruby
print "Enter a positive number: "
num=gets.chomp.to_i
i=0
#If the condition is negative, it execute
until i>num
  puts "Value: #{i}"
  i=i+1
end
