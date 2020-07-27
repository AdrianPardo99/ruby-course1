## Repositorio de un curso de Ruby con sintaxis basica y algunos programas de ejemplificación ##

Ruby es un lenguaje de programación interpretado el cual trabaja bajo una sintaxis parecida a la de Python

# Hello world #
```ruby
#Form 1
  puts "Hello world"
#Form 2
  puts("Hello wolrd")
#Form 3
  print "Hello world\n"
#Form 4
  print("Hello world\n")
```

# Input text with/without \n #
```ruby
#Func gets with \n
  var=gets
#Func without \n
  var=gets.chomp
```
# Casting/Parsing string to integer/float #
```ruby
#Read value from standar input and casting/parsing int
  var=gets.chomp.to_i
#Read value from standar input and casting/parsing float
  var=gets.chomp.to_f

#Casting/Parsing string to int/float
  var="#number".to_i
  #or
  var="#number".to_f
```
# Print/Puts with variables #
```
  var=foo
#Form 1
  print "Text and description: #{var}"
#Form 2
  puts "Text and description: #{var}"
#Form 3
  print var
#Form 4
  puts var
```
