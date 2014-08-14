def stock_picker(prices_arr)
	summary_arr = Array.new
	profit_arr = Array.new
	results_arr = Array.new(2)
	# prices_arr >> [15, 6, 7, 10, 3]
	prices_arr.each_with_index do |buy, i|
		prices_arr[i+1..-1].each_with_index do |sell, j|
			next if (sell-buy) < 0
			summary_arr << { :buy => buy, :buy_index => i, :sell => sell, :sell_index => j+i+1, :profit => (sell-buy)}
		end
	end
	# puts summary_arr.inspect

	summary_arr.each do |hash|
		profit_arr << hash[:profit]	
	end
	# puts profit_arr
	max_index = profit_arr.index(profit_arr.max)
	results_arr[0] = summary_arr[max_index][:buy_index]
	results_arr[1] = summary_arr[max_index][:sell_index]
	puts results_arr.inspect
end

def make_array(prices)
	@prices_arr = prices.split(",")
	@prices_arr.collect! { |el| el.to_i }
end

puts "Please enter a series of stock prices (e.g., 15,6,7,10,3)"
prices = gets.chomp
# puts make_array(prices).inspect
make_array(prices)
stock_picker(@prices_arr)