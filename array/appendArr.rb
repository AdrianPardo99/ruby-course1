#!/usr/bin/env ruby

arr = Array[-1,-21,2]
puts "First Array: #{arr}"
for i in arr
  puts "Index: #{arr.index(i)} value: #{i}"
end
puts "\nAppend more elements"
arr=arr<<10
arr=arr<<100
puts "Second Array: #{arr}"
for i in arr
  puts "Index: #{arr.index(i)} value: #{i}"
end
