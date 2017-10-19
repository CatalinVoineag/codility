require 'byebug'

# Is Unique: Implement an algorithm to determine if a string has all unique characters. What if you
# cannot use additional data structures?

class UniqCharacters

	def self.solution(str)
		p false if str.length > 255
		char_count = str.chars.length
		h_table = {}
		
		str.each_char do |char|
			h_table[char] = char
		end
		
		p char_count == h_table.keys.count ? true : false 
end

	UniqCharacters.solution("random string")

end