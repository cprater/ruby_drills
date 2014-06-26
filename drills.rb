def max(numbers)
	numbers.sort.pop
end

def max_of_three(numbers)
	max(numbers)
end

def is_vowel?(letter)
	vowels = ["a", "e", "i", "o", "u", "y"]
	return vowels.include?(letter.downcase)
end

def translate(phrase)
	phrase.split("").map do |letter|
		letter = "#{letter}o#{letter}" unless is_vowel?(letter) || letter == " "
		letter
	end
	.join("")
end

def find_longest_word(words)
	words.sort { |a,b| a.length - b.length}.pop
end

def filter_longer_words(words, max)
	new_words = []
	words.each do |word|
		new_words << word if word.length > max
	end
	new_words
end

def char_freq(phrase)
	freq = {}
	phrase.split("").each do |letter|
		if freq[letter]
			freq[letter] += 1
		else
			freq[letter] = 1
		end
	end
	freq
end

# DRIVER CODE
print 'max should return 7: ' 
puts max([7,1]) == 7
print 'max_of_three should return -2: '
puts max_of_three([-3,-5,-2]) == -2
print 'is vowel should return false: '
puts is_vowel?("b") == false
print 'is vowel should return true: '
puts is_vowel?("e") == true
print 'translate should return "tothohisos isos fofunon": '
puts translate("this is fun") == "tothohisos isos fofunon"
print 'find longest word should return "bacon bits": '
puts find_longest_word(['boo', 'bacon bits', 'chicken', 'breakfast', 'coffee']) == 'bacon bits'
print 'filter longer words should return ["bobby", "brown", "legend"]: '
puts filter_longer_words(["bobby", "brown", "is", "not", "a", "legend"], 4) == ["bobby", "brown", "legend"]
print 'char freq should return {a: 3, b: 2, c: 3, d: 1}'
puts char_freq("abacbdacc") == {"a" => 3, "b" => 2, "c" => 3, "d" => 1}


