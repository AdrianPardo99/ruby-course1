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
```ruby
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

# Array in Ruby #
```ruby
#Array instance
#Form 1
  array=[foo,foo1,foo2]
#Form 2
  array=Array[foo,foo1,foo2]

#Foreach printing elements
  for i in array
    puts i
  end

#Append elements in the array
  array=array<<foo3

#Remove first element
  array.shift

#Remove last element
  array.pop

#Get the n elements of the array in the position p
  array2=array.slice(p,n)
```

## Hash Structure ##
```ruby
#The hash table is an structure than contains {key:value}
  var={key1:value,key2:value1,key3:value2}
#The keys are unrepeatable
  var={key1:value,key2:value1,key3:value2,key3:value3}
#Output of var if puts var: {:key1=>value, :key2=>value1, :key3=>value3}

#Get array of the keys or the values
  var.keys
  var.values

#Add other value
  var.store(:key4,value4)
  #Or
  var[:key4]=value4

#Append other hash structure
  var1={key5:value5,key6:value6}
  var=var.merge(var1)

#Boolean contains key or value
  var.has_key?(keyN)
  var.has_value?(valueN)
```

## Ciclos ##
```ruby
#Loop iterator
  loop{
    #code and some condition for break the loop
    #If the loop iterator doesn't have condition its an infinite loop
  }

#do
  loop do
    #Code and condition
  end

#until the condition is negative
  until condition
    #code
  end

#while loop
  while condition
    #code
  end

#foreach
  for i in arr or hash
    #code
  end

#each
  array.each do{
    |variable_iterator|
    #code
  }

#each 2
  array.each do |variable_iterator|
    #code
  end

#each in hash
  hash.each do{
    |key,value|  
    #code
  }

#each keys in hash
  hash.each_key do{
    |key|  
    #code
  }

#each values in hash
hash.each_value do{
  |value|  
  #code
}

#times iterator, is like for i=0;i<N;i++
  var=N_integer
  var.times{
    |i|
    #code
  }
```
