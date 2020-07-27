#!/usr/bin/env ruby

def methSalute(paramName, paramState)
  puts "Hello #{paramName}, #{paramState}"
end

print "Enter the name: "
name=gets.chomp
#Forma 1
#methSalute name,"have a nice day"
#Forma 2
methSalute(name,"have a nice day")
