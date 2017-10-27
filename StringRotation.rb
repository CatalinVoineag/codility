require "byebug"
require 'benchmark'
require 'bigdecimal/math'

class StringRotation

# Assume you have a method isSubst ring which checks if one word is a substring
# of another. Given two strings, 51 and 52, write code to check if 52 is a rotation of 51 using only one
# call to isSubstring (e.g., "waterbottle" is a rotation of "erbottlewat").

	def self.solution(s1, s2)
		reversed_s1 = ""

		if s1.length == s2.length
			for x in(-s1.length..-1).reverse_each
				reversed_s1 += s1[x]
				
			end
			result = reversed_s1 == s2
		else
			result = false
		end
		p result
	end

	StringRotation.solution("waterbottle", "elttobretaw")

end