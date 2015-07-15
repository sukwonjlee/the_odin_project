def englishNumber number
	# Check number 0 - 100
	if number < 0
		return "Please enter a number zero or greater."
	end
	if number > 100
		return "Please enter a number 100 or lesser."
	end

	numString = ""	# This is the string we will return.

	left = number  # "left" is how much of the number we have left to write out.
	write = left / 100	# How many hundreds left to write out?
	left = left - write * 100	# Substract off hundreds.

	if write > 0
		return "one hundred"
	end

	write = left / 10 	# How many tens left to write out?
	left = left - write * 10	# Substract off tens.

	if write == 1
		# Since we can't write "tenty-two" instead of "twelve",
    # we have to make a special exception for these.
		if left == 0 
			numString = numString + "ten"
		elsif left == 1
			numString = numString + "eleven"
		elsif left == 2
      numString = numString + 'twelve'
    elsif left == 3
      numString = numString + 'thirteen'
    elsif left == 4
      numString = numString + 'fourteen'
    elsif left == 5
      numString = numString + 'fifteen'
    elsif left == 6
      numString = numString + 'sixteen'
    elsif left == 7
      numString = numString + 'seventeen'
    elsif left == 8
      numString = numString + 'eighteen'
    elsif left == 9
      numString = numString + 'nineteen'
    end
  end

  if write == 2
  	numString = numString + "twenty"
	elsif write == 3
    numString = numString + 'thirty'
  elsif write == 4
    numString = numString + 'forty'
  elsif write == 5
    numString = numString + 'fifty'
  elsif write == 6
    numString = numString + 'sixty'
  elsif write == 7
    numString = numString + 'seventy'
  elsif write == 8
    numString = numString + 'eighty'
  elsif write == 9
    numString = numString + 'ninety'
  end

  if write == 1
  	numString
  else
  	if (write >= 2 and left > 1)
  		numString = numString + "-"
  	end
		write = left
  	if    write == 1
      numString = numString + 'one'
    elsif write == 2
      numString = numString + 'two'
    elsif write == 3
      numString = numString + 'three'
    elsif write == 4
      numString = numString + 'four'
    elsif write == 5
      numString = numString + 'five'
    elsif write == 6
      numString = numString + 'six'
    elsif write == 7
      numString = numString + 'seven'
    elsif write == 8
      numString = numString + 'eight'
    elsif write == 9
      numString = numString + 'nine'
    end
  end

  if numString == ''
    # The only way "numString" could be empty is if
    # "number" is 0.
    return 'zero'
  end

  return numString
end

puts "Please enter a number btween 0 and 100"
number = gets.chomp.to_i
puts englishNumber(number)