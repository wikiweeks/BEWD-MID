#This class defines the menu
require 'pry'
require 'rest-client'
require 'json'

class Menu
	attr_accessor :answer
	def initialize answer
		@answer = answer
	end

	def run_menu
		if answer == 1
			read = Newest.new
			read.get_newest
		elsif answer == 2
			read = Best.new
			read.get_best
		elsif answer == 3
			read = Popular.new
			read.get_pop
		else
			puts "Please choose 1, 2, or 3 to see stories."
			response = gets.chomp.to_i
				if response == 1
					read = Newest.new
					read.get_newest
				elsif response == 2
					read = Best.new
					read.get_best
				elsif response == 3
					read = Popular.new
					read.get_pop
				end
		end
	end

end