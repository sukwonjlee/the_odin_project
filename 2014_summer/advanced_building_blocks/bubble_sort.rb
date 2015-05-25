def bubble_sort(num_arr)
	begin
		i = 0
		num_arr.each_cons(2) do |a|
			if a[0] > a[1]
				num_arr[i], num_arr[i+1]  = num_arr[i+1], num_arr[i]
				break
				i += 1
			else
				i += 1
			end
		end
	end while i < (num_arr.length - 1)
	puts num_arr.inspect	
end


def bubble_sort_by(words_arr)
	begin
		i = 0
		words_arr.each_cons(2) do |a|
			# puts a.inspect
			if yield(a[0], a[1]) < 0
				words_arr[i], words_arr[i+1]  = words_arr[i+1], words_arr[i]
				break
				i += 1
			else
				i += 1
			end
		end
	end while i < (words_arr.length - 1)
	puts words_arr.inspect
end


def make_array(numbers)
	@numbers_arr = numbers.split(",")
	@numbers_arr.collect! { |el| el.to_i }
end

puts "Please enter a series of numbers (e.g., 4,3,78,2,0,2)."
numbers = gets.chomp
make_array(numbers)

bubble_sort(@numbers_arr)
puts "SORTED!"


puts "Pleaseenter a series of words (e.g, hi,hello,hey)."
words = gets.chomp
words_arr = words.split(",")

bubble_sort_by(words_arr) do |left,right|
  right.length - left.length
end
puts "SORTED!"