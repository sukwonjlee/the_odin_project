def substrings(string, dic)
	hash = Hash.new
	i = 0
	string_arr = string.downcase.split
	string_arr.each do |str|
		str.gsub!(/\W+/, "")
		dic.each do |dic|
			if str.include?(dic)
				hash[dic] ||= i
				hash[dic] = hash[dic] + 1
			end
		end
	end
	puts hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)