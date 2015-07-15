def englishNumber2 number
	if number < 0
		return "Please enter a number that is not negative."
	end
	if number == 0
		return "zero"
	end

	numString = ""	# This is the string we will return.
	onesPlace = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
	tensPlace = ["ten", "twenty", "thrity", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
	teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventy", "eighteen", "nineteen"]

	left = number  # "left" is how much of the number we still have left to write out.
	write  = left / 100  # "write" is the part we are writing out right now.
	left = left - write * 100

	if write > 0
		numString = numString + onesPlace[write - 1] + " hundred"
	end

	if left > 0
		if write > 0
			numString = numString + " and "
		end

		write = left / 10
		left = left - write * 10

		if write == 0
			write = left
			numString = numString + onesPlace[write -1]
		elsif write == 1
			write = left
			numString = numString + teenagers[write -1]
		elsif write > 1
			numString = numString + tensPlace[write -1]
			write = left
			numString = numString + "-" + onesPlace[write -1]
		end
	end

	puts numString
end

puts "Please enter a number between 0 and 999"
number = gets.chomp.to_i
englishNumber2(number)
