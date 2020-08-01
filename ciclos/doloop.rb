#!/usr/bin/env ruby
print "Enter a positive number: "
num=gets.chomp.to_i
i=0
loop do
  puts "Number of the instance loop: #{i}"
  i=i+1
  if(i==num)
    break
  end
end
