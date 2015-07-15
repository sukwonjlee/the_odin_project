def ask yourQuestion
	goodAnswer = false
	while (not goodAnswer)
		puts yourQuestion
		reply = gets.chomp.downcase

		if (reply == "yes" or reply == "no")
			goodAnswer = true
			if reply == "yes"
				answer = true
			else
				answer = false
			end
		else
			puts "Please answer \'yes\' or \'no\'."
		end
	end
	answer
end

ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
ask 'Do you like eating tamales?'