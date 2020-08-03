#!/usr/bin/env ruby
require "./listItems.rb"

#Version 0.1 sin validaciones en entradas de texto

#-------------------------------------------#
#         Opciones de la aplicación         #
#-------------------------------------------#
# 1- Add item                               #
# 2- Remove item by index                   #
# 3- Check item by index                    #
# 4- Remove all items                       #
# 5- Show all items                         #
# 6- Exit application                        #
#-------------------------------------------#

class Shop

  def initialize()
    @lista=ListShop.new()
  end

  def clearScreen()
    if !Gem.win_platform?
      #In Windows
      system("clear")
    else
      #In Linux
      system("cls")
    end
  end

  def options_app()
    " ------------------------------ \n"+
    "|     Shoping List Options     |\n"+
    " ------------------------------ \n"+
    "|  1- Add item                 |\n"+
    "|  2- Remove item by index     |\n"+
    "|  3- Check item by index      |\n"+
    "|  4- Remove all items         |\n"+
    "|  5- Show all items           |\n"+
    "|  6- Exit of the application  |\n"+
    " ------------------------------ \n"
  end

  def run()
    clearScreen()
    loop {
      puts options_app
      opt=gets.chomp.to_i
      clearScreen()
      case opt
      when 1
        print "Please enter the name of the item: "
        @lista.add_item(gets.chomp)
      when 2
        @lista.show_all
        if @lista.items.length!=0
          print "Enter the index of the item: "
          @lista.remove_by_index(gets.chomp.to_i)
        end
      when 3
        @lista.show_all
        if @lista.items.length!=0
          print "Enter the index of the item: "
          @lista.check_by_index(gets.chomp.to_i)
        end
      when 4
        @lista.remove_all
      when 5
        @lista.show_all
      when 6
        break
      else
        puts "Please enter a correct answer"
      end
      sleep(2)
      clearScreen()
     }
  end

end

shop=Shop.new
shop.run
