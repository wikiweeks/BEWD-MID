# This file defines the new stories class
require 'pry'
require 'rest-client'
require 'json'

class Newest
	# attr_accessor :answer

	def initialize
		# @answer = answer
	end

	def get_newest 
			new_response = RestClient.get("http://api.espn.com/v1/now?limit=3&apikey=w8zq7xy6q6x77squau67scvf")
			new_stories = JSON.load(new_response)
		# binding.pry

		new_stories["feed"].each do |x|
			puts x["headline"]
			puts ""
		end
	end

end
