class StringCompression

# String Compression: Implement a method to perform basic string compression using the counts
# of repeated characters. For example, the string aabcccccaaa would become a2b1c5a3. If the
# "compressed" string would not become smaller than the original string, your method should return
# the original string. You can assume the string has only uppercase and lowercase letters (a - z).

	STR = "aabcccccaaa"

	def self.solution(str)

		# TO DO
		# COUNT THE REPEATED CHARACTERS UNTIL ANOTHER CHARACTER WILL FOLLOW APPEND WHEN THIS HAPPENS
		
		chars = str.chars
		result_string = ""

		counter = 0
		chars.each_with_index do |char, position|
			counter +=1 
			if chars[position + 1] != char
				result_string += (char + counter.to_s)
				counter = 0 
			end
		end

		p result_string.length < str ? result_string : str 

	end

	StringCompression.solution(STR)


end