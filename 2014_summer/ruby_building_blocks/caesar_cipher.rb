def caesar_cipher(string, shift)
	string_array = string.split(//)
	# puts string_array.inspect
	capital_alphabet = "A".."Z"
	capital_alphabet_array = capital_alphabet.to_a
	capital_size = capital_alphabet_array.size
	lower_alphabet = "a".."z"
	lower_alphabet_array = lower_alphabet.to_a
	lower_size = lower_alphabet_array.size

	results = ""

	string_array.each do |el|
		if capital_alphabet_array.include?(el)
			results << capital_alphabet_array[
				(capital_alphabet_array.index(el) + shift.to_i) % capital_size
			]
		elsif lower_alphabet_array.include?(el)
			results << lower_alphabet_array[
				(lower_alphabet_array.index(el) + shift.to_i) % lower_size
			]
		else
			results << el
		end
	end	

	puts results
end


puts "Enter a String: "
string = gets.chomp # String type

puts "Enter the Shift Factor: "
shift = gets.chomp  # String type

puts "Caesar Cipher of Your String is: "
caesar_cipher(string, shift)
