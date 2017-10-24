require 'byebug'

class OneWay

	# There are three types of edits that can be performed on strings: insert a character,
	# remove a character, or replace a character. Given two strings, write a function to check if they are
	# one edit (or zero edits) away.
	# EXAMPLE
	# -> true
	# pales. pale -> true 
	# pale. bale -> true
	# pale. bake -> false

	def self.solution(str1, str2)
		return false if str1.length > 255 || str2.length > 255
		str1 = str1.downcase.chars
		str2 = str2.downcase.chars

		if str1.count == str2.count
			return true if (str1 & str2).count == 1
		elsif str1.count >  str2.count
			return true if (str1 - str2).count == 1
		elsif str2.count > str1.count
			return true if (str2 - str1).count == 1
		else
			return false
		end 

		return false
		
	end

	OneWay.solution("car", "")


end