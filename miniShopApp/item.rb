#!/usr/bin/env ruby
class ItemShop
  attr_writer :item,:checked

  def initialize(item="")
    @item=item
    @checked=false
  end

  def to_s()
    if @checked
      "[✓] "+@item
    else
      "[ ] "+@item
    end
  end
end
