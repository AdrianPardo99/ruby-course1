#!/usr/bin/env ruby
require "socket"


if ARGV.length<2
  puts "Error: Usage #{$0} <IP> <PORT>"
  exit
end
puts "IP server: #{ARGV[0]}\nPort application server: #{ARGV[1]}"

# s=Socket.new Socket::AF_INET, Socket::SOCK_STREAM
server=TCPServer.new ARGV[0],ARGV[1].to_i

loop do
  client = server.accept    # Wait for a client to connect
  client.puts "Hello ! from the server #{ARGV[0]}"
  client.puts "Time is #{Time.now}"
  client.close
end
