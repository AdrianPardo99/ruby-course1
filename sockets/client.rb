#!/usr/bin/env ruby
require "socket"


if ARGV.length<2
  puts "Error: Usage #{$0} <IP> <PORT>"
  exit
end
puts "IP: #{ARGV[0]}\nPort application: #{ARGV[1]}"
s = TCPSocket.new ARGV[0], ARGV[1].to_i

while line = s.gets # Read lines from socket
  puts line         # and print them
end

s.close             # close socket when done
