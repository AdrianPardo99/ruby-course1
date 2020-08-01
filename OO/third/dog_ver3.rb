#!/usr/bin/env ruby
#Class with readers (getters)
class Dog
  attr_reader :raza,:color,:age
  def initialize(raza,color,age)
    @raza=raza
    @color=color
    @age=age
  end

  def raza=(raza)
    @raza=raza
  end

  def color=(color)
    @color=color
  end

  def age=(age)
    @age=age
  end
end

dog=Dog.new("Pastor","Cafe",12)

puts "Raza: #{dog.raza}\nColor: #{dog.color}\nAge: #{dog.age}"
dog.raza="Chihuahua"
dog.color="Blanco"
dog.age=1
puts "Raza: #{dog.raza}\nColor: #{dog.color}\nAge: #{dog.age}"
