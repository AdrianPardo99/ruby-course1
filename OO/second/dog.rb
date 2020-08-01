#!/usr/bin/env ruby
class Dog
  def initialize(raza,color,age)
    @raza=raza
    @color=color
    @age=age
  end

  def getRaza()
    @raza
  end

  def getColor()
    @color
  end

  def getAge()
    @age
  end
end

dog=Dog.new("Pastor","Cafe",12)

puts "Raza: #{dog.getRaza}\nColor: #{dog.getColor}\nAge: #{dog.getAge}"
