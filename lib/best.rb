#This file defines the best stories
require 'pry'
require 'rest-client'
require 'json'

class Best

	def initialize
		# @answer = answer
	end

	def get_best
		puts "The Best Stories Chosen By Staff"
			top_response = RestClient.get("http://api.espn.com/v1/now/top?limit=3&apikey=w8zq7xy6q6x77squau67scvf")
			top_stories = JSON.load(top_response)
		# binding.pry

		top_stories["feed"].each do |x|
			puts x["headline"]
			puts ""
		end
	end

end	