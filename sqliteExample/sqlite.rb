#!/usr/bin/env  ruby

require "sqlite3"

# Function for create
def create_db(name="example.db")
  db=SQLite3::Database.open name
  db
end

def create_table(name_table="ex_table",params="id int primary key",con)
  con.execute "CREATE TABLE IF NOT EXISTS #{name_table} (#{params})"
end

def insert_data(name_table="ex_table",sing="?",params=["0"],con)
  con.execute "INSERT INTO #{name_table} VALUES(#{sing})",params
end

def get_all_data(name_table="ex_table",con)
  stm=con.prepare "SELECT*FROM #{name_table}"
  val=stm.execute
  str=""
  val.each{|i|
    str+="#{i.join(",")}\n"
  }
  stm.close
  str
end

def get_some_data(name_table="ex_table",from_what="id",
    logical_where="id<?",where_what=["1"],con)
  stm=con.prepare "SELECT #{from_what} FROM #{name_table} where #{logical_where}"
  where_what.each_with_index{|i,j|
    stm.bind_param(j+1,i)
  }
  val=stm.execute
  str=""
  val.each{|i|str+="#{i.join(",")}\n"}
  stm.close
  str
end

def update_data(name_table="ex_table",set_data="id=?",where_data="id=?",
    data=[0,2],con)
  con.execute "UPDATE #{name_table} SET #{set_data} WHERE #{where_data}",data
end

def delete_data(name_table="ex_table",where_data="id=?",data=[1],con)
  con.execute "DELETE FROM #{name_table} WHERE #{where_data}",data
end

con=create_db
create_table("ejemplo_tabla","id int primary key, nombre text",con)
#insert_data("ejemplo_tabla","?,?",[-1,"Adrian Gonzalez Pardo"],con)
puts get_all_data("ejemplo_tabla",con)
puts ""
puts get_some_data("ejemplo_tabla","nombre","id>=? AND id<=?",[0,3],con)
puts ""
update_data("ejemplo_tabla","nombre=?","id=?",["Juan Gonzalez Perez",-1],con)
puts get_all_data("ejemplo_tabla",con)
delete_data("ejemplo_tabla","id=?",[-1],con)
puts ""
puts get_all_data("ejemplo_tabla",con)

con.close
