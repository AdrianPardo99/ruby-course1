#!/usr/bin/env ruby
#Class with readers and writers (getters and setters)
class Dog
  attr_accessor :raza,:color,:age
  def initialize(raza,color,age)
    @raza=raza
    @color=color
    @age=age
  end
end

dog=Dog.new("Pastor","Cafe",12)

puts "Raza: #{dog.raza}\nColor: #{dog.color}\nAge: #{dog.age}"
dog.raza="Chihuahua"
dog.color="Blanco"
dog.age=1
puts "Raza: #{dog.raza}\nColor: #{dog.color}\nAge: #{dog.age}"
