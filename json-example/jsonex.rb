#!/usr/bin/env ruby

require "json"
dictionary={:p1=>"Hola",:c1=>"Mundo"}
json=JSON.generate dictionary

puts "Dictionary:\t#{dictionary.to_s}\nJSON convert:\t#{json}"

dic=JSON.parse json
puts "JSON to Dic:\t#{dic}"
