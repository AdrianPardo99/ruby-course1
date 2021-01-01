#!/usr/bin/env ruby

require "sqlite3"

class SQLITE_CONTROLLER
  def initialize(name_db="")
    @name_db=name_db
    @db=SQLite3::Database.open(@name_db)
    @stm=nil
  end

  def conection_end()
    """ Close the database conection  """
    @db.close
  end

  def create_table(name_table="ex_table",params="id int primary key")
    """ Create a new table in the database  """
    @db.execute "CREATE TABLE IF NOT EXISTS #{name_table} (#{params})"
  end

  def insert_data(name_table="ex_table",sing="?",params=["0"])
    """ Insert data in table """
    @db.execute "INSERT INTO #{name_table} VALUES(#{sing})",params
  end

  def get_all_data(name_table="ex_table")
    """ Query all the data in table """
    @stm=@db.prepare "SELECT*FROM #{name_table}"
    val=@stm.execute
    str=""
    val.each{|i|
      str+="#{i.join(",")}\n"
    }
    @stm.close
    str
  end

  def get_some_data(name_table="ex_table",from_what="id",
      logical_where="id<?",where_what=["1"])
    """ Query some attr in the table  """
    @stm=@bd.prepare "SELECT #{from_what} FROM #{name_table} where #{logical_where}"
    where_what.each_with_index{|i,j|
      @stm.bind_param(j+1,i)
    }
    val=@stm.execute
    str=""
    val.each{|i|str+="#{i.join(",")}\n"}
    @stm.close
    str
  end

  def update_data(name_table="ex_table",set_data="id=?",where_data="id=?",
      data=[0,2])
    """ Update data """
    @db.execute "UPDATE #{name_table} SET #{set_data} WHERE #{where_data}",data
  end

  def delete_data(name_table="ex_table",where_data="id=?",data=[1])
    """ Delete data in table  """
    @db.execute "DELETE FROM #{name_table} WHERE #{where_data}",data
  end
end
