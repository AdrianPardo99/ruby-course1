#!/usr/bin/env ruby
#Copy the item file in this path for working because the require makes an error
load "../listItems.rb"

lista=ListShop.new()
lista.add_item("Huevos")
lista.add_item("Jamon")
lista.add_item("Aceite")
lista.show_all()
lista.check_by_index(1)
puts ""
lista.show_all()
lista.check_by_index(3)
puts ""
lista.show_all()
lista.remove_by_index(3)
puts ""
lista.show_all()
puts ""
lista.remove_all()
lista.show_all()
