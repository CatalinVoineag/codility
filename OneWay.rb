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
		str1 = str1.downcase
		str2 = str2.downcase

		str1_chars = str1.chars
		str2_chars = str2.chars

		diff_chars = str1_chars - str2_chars
		byebug
		p diff_chars.length <= 1 ? true : false

	end

	OneWay.solution("car", "racfk")


end