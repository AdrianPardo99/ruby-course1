#!/usr/bin/env ruby

pid_arr=[]

pid=Process.fork do
  puts "child, pid #{Process.pid} with ppid #{Process.ppid} sleeping..."
  pid_arr.push(Process.pid)
  sleep 2
  puts "child exiting"
end

puts "parent, pid #{Process.pid}, waiting on child pid #{pid_arr}"
Process.wait
puts "parent exiting"
