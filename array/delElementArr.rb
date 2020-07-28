#!/usr/bin/env ruby

arr = Array[-1,-21,2]
puts "First Array: #{arr}"
for i in arr
  puts "Index: #{arr.index(i)} value: #{i}"
end

puts "\n\"Delete\" middle element"
arr=Array[arr.shift,arr.pop]
puts "Second Array: #{arr}"
for i in arr
  puts "Index: #{arr.index(i)} value: #{i}"
end
