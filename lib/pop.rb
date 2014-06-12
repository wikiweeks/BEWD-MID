#This file defines the popular class
require 'pry'
require 'rest-client'
require 'json'

class Popular

	def initialize

	end

	def get_pop
		puts "The Most Popular Stories Among Readers"
			pop_response = RestClient.get("http://api.espn.com/v1/now/popular?limit=3&apikey=w8zq7xy6q6x77squau67scvf")
			pop_stories = JSON.load(pop_response)
		# binding.pry

		pop_stories["feed"].each do |x|
			puts x["headline"]
			puts ""
		end
	end
end