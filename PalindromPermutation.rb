require 'byebug'

class PalindromPermutation

	# Palindrome Permutation: Given a string, write a function to check if it is a permutation of a palin-
	# drome. A palindrome is a word or phrase that is the same forwards and backwards. A permutation
	# is a rea rrangement of letters. The palindrome does not need to be limited to just dictionary words.
	# EXAMPLE
	# Input: Tact Coa
	# Output: True (permutations: "taco cat". "atco cta". etc.)

	# You need to check if all the letters or all but one are repeated.
	# If that's the case then the string can become a palindrom 
	
	STR = "abc abc a csfasdfasfasdf"

	def self.solution(str)
		return false if str == nil || str.empty? 
		str = str.downcase.gsub(" ", "")
		arr = str.chars
		

		### Check the solution in the book


		arr.delete_if{|x| arr.count(x) > 1}

		if arr.count == 1 || arr.empty?
			p true
		else
			p false
		end
	end

	PalindromPermutation.solution(STR)

end