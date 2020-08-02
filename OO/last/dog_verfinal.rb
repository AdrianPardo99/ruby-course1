#!/usr/bin/env ruby
#Class with readers and writers (getters and setters)
class Dog
  attr_accessor :raza,:color,:age
  def initialize(raza,color,age)
    @raza=raza
    @color=color
    @age=age
  end

  def to_s()
    "Raza: #{@raza}\nColor: #{@color}\nAge: #{@age}"
  end

end

dog=Dog.new("Pastor","Cafe",12)

puts dog
dog.raza="Chihuahua"
dog.color="Blanco"
dog.age=1
puts dog
puts "\n\nMetodos de la clase:\n#{dog.methods}"
