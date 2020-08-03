#!/usr/bin/env ruby
require "./listItems.rb"

#Version 1.0 validaciones en entradas de texto

#-------------------------------------------#
#         Opciones de la aplicación         #
#-------------------------------------------#
# 1- Add item                               #
# 2- Remove item by index                   #
# 3- Check item by index                    #
# 4- Remove all items                       #
# 5- Show all items                         #
# 6- Exit application                       #
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

  def val_string()
    var=""
    loop{
      var=gets.chop
      if var.empty?
        print "Please enter a string for the item, try again: "
      else
        break
      end
     }
     var
  end

  def val_integer_list()
    var=-1
    loop {
      var=gets.chop.to_i
      if var<=0 || var>@lista.items.length
        print "Please enter a correct number, try again: "
      else
        break
      end
     }
     var
  end

  def val_remove_all()
    var=false
    loop {
      print "Are you wish to remove all the items? (y/n) "
      val=gets.chop
      if val=="y"
        var=true
        break
      elsif val=="n"
        var=false
        break
      else
        puts "Please enter a correct option, try again."
      end
     }
    var
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
        @lista.add_item(val_string())
      when 2
        @lista.show_all
        if @lista.items.length!=0
          print "Enter the index of the item: "
          @lista.remove_by_index(val_integer_list())
        end
      when 3
        @lista.show_all
        if @lista.items.length!=0
          print "Enter the index of the item: "
          @lista.check_by_index(val_integer_list)
        end
      when 4
        if @lista.items.length!=0
          if val_remove_all
            @lista.remove_all
          end
        end
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
