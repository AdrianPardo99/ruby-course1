#!/usr/bin/env ruby

arr=[1,1,2,3,5,8,13]

arr.each  do |i|
  puts "Fib: #{i}"
end

arr.each{
  |i|
  puts "Fib2: #{i}"
}
