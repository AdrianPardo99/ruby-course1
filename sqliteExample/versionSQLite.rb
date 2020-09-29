#!/usr/bin/env  ruby

require "sqlite3"

begin
  db=SQLite3::Database.new  ":memory:"
  puts db.get_first_value 'SELECT SQLITE_VERSION()'

rescue SQLite3::Exception=>e
  puts "Error, Exception occurred: #{e}"
ensure
  db.close if db
end
