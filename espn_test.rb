#ESPN API Test

#espn test
# http://api.espn.com/v1/now?limit=3&apikey=:yourkey
require 'pry'
require 'rest-client'
require 'json'

puts "Welcome to the ESPN Now news app. What kind of sports stories would you like to see?"
puts "1: The Newest Stories"
puts "2: The Best Stories Chosen By Staff"
puts "3: The Most Popular Stories Among Readers"

menu = gets.chomp.to_i

if menu == 1
	puts "The Newest Stories"
		new_response = RestClient.get("http://api.espn.com/v1/now?limit=3&apikey=w8zq7xy6q6x77squau67scvf")
		new_stories = JSON.load(new_response)
	# binding.pry

	new_stories["feed"].each do |x|
		puts x["headline"]
		puts ""
	end
end

if menu == 2
	puts "The Best Stories Chosen By Staff"
		top_response = RestClient.get("http://api.espn.com/v1/now/top?limit=3&apikey=w8zq7xy6q6x77squau67scvf")
		top_stories = JSON.load(top_response)
	# binding.pry

	top_stories["feed"].each do |x|
		puts x["headline"]
		puts ""
	end
end

if menu == 3
	puts "The Most Popular Stories Among Readers"
		pop_response = RestClient.get("http://api.espn.com/v1/now/popular?limit=3&apikey=w8zq7xy6q6x77squau67scvf")
		pop_stories = JSON.load(pop_response)
	# binding.pry

	pop_stories["feed"].each do |x|
		puts x["headline"]
		puts ""
	end
end

puts "What what would you like to do next?"

# puts "A: See more stories"
# puts "B: Exit"

# choice = gets.chomp

# if choice = "A"
	
# end


	# The format of an API request is as follows:
	# http://api.espn.com/:version/:resource/:method?apikey=:yourkey
	# Sample Now Requests
	# ACTION	URI	DESCRIPTION
	# GET	http://api.espn.com/v1/now	Stream of the latest, most-recently published content on ESPN.com.
	# GET	http://api.espn.com/v1/now/top	Top editorially-curated content on ESPN.com.
	# GET	http://api.espn.com/v1/now/popular	Most popular, recently published content on ESPN.com.
	# GET	http://api.espn.com/v1/now?leagues=nfl&teams=4	Most recent content for a particular NFL team.