class CheckPermutation

# 	Check Permutation: Given two strings, write a method to decide if one is a permutation of the
# other.

	def self.solution(str1, str2)
		return false if str1.length > 255 || str2.length > 255

		str1_chars = str1.chars.sort
		str2_chars = str2.chars.sort
		
		p str1_chars == str2_chars

		# str1_chars.permutation {|x| result = true if x == str2_chars}
		# str2_chars.permutation {|y| result = true if y == str1_chars}

		

	end

	CheckPermutation.solution("abc", "bac")

end