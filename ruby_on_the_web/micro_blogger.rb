require 'jumpstart_auth'

class MicroBlogger
	attr_reader :client

	def initialize
		puts "Initializing MicroBlogger"
		@client = JumpstartAuth.twitter
	end

	def tweet(message)
		if message.length <= 140
			@client.update(message)
		else
			puts "ERROR! Twitter messages are limited to 140 characters."
		end
	end

	def run
		puts ">> Welcome to the JSL Twitter Client!"
		command = "" # Define an variable a string type.
		while	command != "q"
			printf "Enter Command: "
			input = gets.chomp
			parts = input.split(" ")
			command = parts[0]
			case command
				when "q" then puts "Goodbye!"
				when "t" then tweet(parts[1..-1].join(" "))
				when "dm" then dm(parts[1], parts[2..-1].join(" "))
				when "spam" then spam_my_follwers(parts[1..-1].join(" "))
				when "elt" then everyones_last_tweet
				else
					puts "Sorry. I don't know how to #{command}"
				end 
		end	
	end

	def dm(target, message) # Direct message
		screen_names = @client.followers.collect { |follower| follower.screen_name }
		if screen_names.include?(target)
			puts "Trying to send #{target} this direct message"
			puts message
			message = "d @#{target} #{message}"
			tweet(message)
		else
			puts "ERROR! You can do DM to only followers"
		end
	end

	def followers_list
		@screen_names = []
		@client.followers.users.each do |follower|
			@screen_names << follower["screen_name"]
		end
		return @screen_names
	end

	def spam_my_follwers(message)
		followers_list.each do |follower|
			dm(follower, message)
		end
	end

	def everyone_last_tweet
		friends = @client.friends
		friends.each do |friend|
			print friend.screen_name
			print friend.last_message
			puts ""  # Just print a blank line to seperate people
		end
	end

end

blogger = MicroBlogger.new
# blogger.tweet("MicroBlogger Initialized")
blogger.run





