#!/usr/bin/env ruby
require "./item.rb"
class ListShop
  attr_accessor :items

  def initialize()
    @items=Array.new()
  end

  def add_item(itemN)
    @items.push(ItemShop.new(itemN))
  end

  def remove_by_index(index)
    @items.delete_at(index-1)
  end

  def check_by_index(index)
    @items[index-1].checked=true
  end

  def remove_all()
    @items.clear()
  end

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
