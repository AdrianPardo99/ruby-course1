#!/usr/bin/env  ruby

require "sqlite3"

begin
  db=SQLite3::Database.new("dataEx.db")
rescue SQLite3::Exception=>e
  puts "Error, Exception occurred: #{e}"
ensure
  db.close if db
end

