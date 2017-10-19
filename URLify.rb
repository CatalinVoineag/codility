class URLify

# 	URLify: Write a method to replace all spaces in a string with '%20: You may assume that the string
# has sufficient space at the end to hold the additional characters, and that you are given the "true"
# length of the string.

	STR = "Mr John Smith    "

	def self.solution(str, length)
		
		new_srt = str.slice(0, length)
		p new_srt.gsub(" ", "%20")

	end

	URLify.solution(STR, 13)

end