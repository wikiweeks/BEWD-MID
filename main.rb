require 'pry'
require 'rest-client'
require 'json'
require_relative 'lib/menu'
require_relative 'lib/newest'
require_relative 'lib/best'
require_relative 'lib/pop'

puts "Welcome to the ESPN Now news app. What kind of stories would you like to see?"
puts "1: The Newest Stories"
puts "2: The Best Stories Chosen By Staff"
puts "3: The Most Popular Stories Among Readers"

answer = gets.chomp.to_i

game = Menu.new(answer)
game.run_menu

# if answer == 1
# 	read = Newest.new
# 	read.get_newest
# elsif answer == 2
# 	read = Best.new
# 	read.get_best
# elsif answer == 3
# 	read = Popular.new
# 	read.get_pop
# else
# 	puts "Please choose 1, 2, or 3 to see stories."
# 	response = gets.chomp.to_i
# 		if response == 1
# 			read = Newest.new
# 			read.get_newest
# 		elsif response == 2
# 			read = Best.new
# 			read.get_best
# 		elsif response == 3
# 			read = Popular.new
# 			read.get_pop
# 		end
# end



# name = gets.chomp

# # puts "What kind of sports stories would you like to see?"

# read = Menu.new(name)

# read.get_menu

# puts "1: The Newest Stories"
# puts "2: The Best Stories Chosen By Staff"
# puts "3: The Most Popular Stories Among Readers"

#The choice in the first section gives us an integer. We can use the integer as a parameter for creating a choice object. We can call the method on the choice object

# menu = gets.chomp.to_i

# if menu = 1
# 	get_newest
# end