def max(num1, num2)
	return num1 if num1 > num2
	num2
end

def max_of_three(num1,num2,num3)
	[num1, num2, num3].sort!.pop
end

def is_vowel(letter)
	vowels = ["a", "e", "i", "o", "u", "y"]
	vowels.include?(letter.downcase)
end

def translate(phrase)
	phrase.split("").map do |letter|
		unless is_vowel(letter) || letter == " "
			letter = "#{letter}o#{letter}"
		end
		letter
	end
	.join("")
end

def find_longest_word(words)
	words.sort{|a,b| a.length - b.length}.pop
end

def filter_longer_words(words, max)
	longer_words = []
	words.each do |word|
		longer_words << word if word.length > max
	end
	longer_words
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


puts max(4,2) == 4
puts max_of_three(3,5,1) == 5
puts is_vowel("e") == true
puts translate("this is fun") == "tothohisos isos fofunon"
puts find_longest_word(["big", "barbara streisand", "cowpie", "stank ass"]) == "barbara streisand"
puts filter_longer_words(["big", "barbara streisand", "cowpie", "stank ass"], 4) == ["barbara streisand", "cowpie", "stank ass"]
puts char_freq("abacggdba") == {"a" => 3, "b" => 2, "c" => 1, "g" => 2, "d" => 1}