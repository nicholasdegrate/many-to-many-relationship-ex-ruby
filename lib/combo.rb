# lib
require 'pry'

# import relative path
                #=> ./  means the current directory
require_relative './nests'
require_relative './squirrel'
require_relative './tree'



# class => <Tree:0x00007f7f6d9e2818 @height="40ft", @type="pine">
pine = Tree.new("pine", "40ft")
apple = Tree.new("apple", "20ft")
# class => <Squirrel:0x00007f7f6d9e26d8 @name="billy">
billy = Squirrel.new("billy")
jimmy = Squirrel.new("jimmy")
=begin 
    # class => 
       nest => #<Nest:0x00007f7f6d9e2610
               @squirrel=#<Squirrel:0x00007f7f6d9e26d8 @name="billy">,
               @tree=#<Tree:0x00007f7f6d9e2818 @height="40ft", @type="pine">>

=end
nw_nest = Nest.new(billy, pine)
sw_nest = Nest.new(jimmy, apple)

binding.pry
0