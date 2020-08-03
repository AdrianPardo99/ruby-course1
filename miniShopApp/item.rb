#!/usr/bin/env ruby
class ItemShop
  #Setters methods
  attr_writer :item,:checked

  #Constructor
  def initialize(item="")
    @item=item
    @checked=false
  end

  #Override toString method
  def to_s()
    if @checked
      "[✓] "+@item
    else
      "[ ] "+@item
    end
  end
end
