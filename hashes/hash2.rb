#!/usr/bin/env ruby

hashes={Adrian:21 ,Raymundo:21.5,Melani:22 }
puts hashes
hashes=hashes.merge({Gali:23})
puts hashes
puts "Keys of the hashes: #{hashes.keys}"

puts "The hash table contain the key Adrian? #{hashes.has_key?(:Adrian)}"
puts "The hash table contain the key Ray? #{hashes.has_key?(:Ray)}"
puts "Store the new key Ray"
hashes.store(:Ray,24)
puts hashes
puts "The hash table contain the key Ray? #{hashes.has_key?(:Ray)}"
