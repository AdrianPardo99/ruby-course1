#!/usr/bin/env ruby

def operation(num1,num2,type,&block)
  if block_given?
    case type
    when 0
      block.call "Add #{num1} + #{num2} = #{num1+num2}"
    when 1
      block.call "Sub #{num1} - #{num2} = #{num1-num2}"
    when 2
      block.call "Sub #{num2} - #{num1} = #{num2-num1}"
    when 3
      block.call "Mul #{num1} * #{num2} = #{num1*num2}"
    when 4
      block.call "Div #{num1.to_f} / #{num2.to_f} = #{num1.to_f/num2.to_f}"
    when 5
      block.call "Div #{num2.to_f} / #{num1.to_f} = #{num2.to_f/num1.to_f}"
    else
      block.call "Nothing option type not defined..."
    end
  else
    puts "Method operation, nothing to do..."
  end
end

n=10
m=20
j=7
j.times{|k|
  operation(n,m,k) {
    |i|
    puts "Result: #{i}"
  }
}
operation(n,m,j)
