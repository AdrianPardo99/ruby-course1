#!/usr/bin/env ruby
require "./item.rb"
class ListShop
  #Getter and Setter access
  attr_accessor :items

  #Constructor
  def initialize()
    @items=Array.new()
  end

  #First method add in the array
  def add_item(itemN)
    @items.push(ItemShop.new(itemN))
  end

  #Remove item by the integer index
  def remove_by_index(index)
    @items.delete_at(index-1)
  end

  #Change el item with a ✓ symbol
  def check_by_index(index)
    @items[index-1].checked=true
  end

  #Clear all the array
  def remove_all()
    @items.clear()
  end

  #Show all the items
  def show_all()
    if @items.length == 0
      puts "Shopping list is empty..."
    else
      @items.each_index{
        |i|
        puts "#{i+1} - #{@items[i].to_s}"
      }
    end
  end
end
