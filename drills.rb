def max(num1, num2)
	return num1 if num1 > num2
	num2
end

def max_of_three(numbers)
	numbers.sort.pop
end

def is_vowel(char)
	vowels = ["a", "e", "i", "o", "u", "y"]
	vowels.include?(char)
end

def translate(phrase)
	letters = phrase.split("")
	letters.map! do |c|
		if c == " " || is_vowel(c)
			c = c
		else
			c = "#{c}o#{c}"
		end
	end
	letters.join("")
end

def sum(numbers)
	numbers.inject(:+)
end

def multiply(numbers)
	numbers.inject(:*)
end

def find_longest_word(words)
	words.sort_by(&:length).pop
end

def filter_long_words(words, max)
	words.keep_if do |word|
		word.length > max
	end
	words
end

def char_freq(phrase)
	freq = {}
	phrase.split("").each do |char|
		if freq[char]
			freq[char] += 1
		else
			freq[char] = 0
		end
	end
	p freq.sort_by{|k,v| k}
end

#=============================================
puts max(3,5) == 5
puts max(-3,-5) == -3
puts max_of_three([1,5,8]) == 8
puts max_of_three([-1,-5,-4]) == -1
puts is_vowel("e") == true
puts is_vowel("b") == false
puts translate("this is fun") == "tothohisos isos fofunon"
puts sum([1,5,6]) == 12
puts multiply([3,4,2]) == 24
puts find_longest_word(["bacon", "boo", "blue", "extrasandwich"]) == "extrasandwich"
puts filter_long_words(["bacon", "boo", "blue", "extrasandwich"], 4) == ["bacon", "extrasandwich"]
puts char_freq("aaabdbabccdadd") == {"a" => 5, "b" => 3, "c" => 2, "d" => 4}








