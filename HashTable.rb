require 'byebug'

# A non-empty zero-indexed array A consisting of N integers is given.

# A permutation is a sequence containing each element from 1 to N once, and only once.

# For example, array A such that:

#     A[0] = 4
#     A[1] = 1
#     A[2] = 3
#     A[3] = 2
# is a permutation, but array A such that:

#     A[0] = 4
#     A[1] = 1
#     A[2] = 3
# is not a permutation, because value 2 is missing.

# The goal is to check whether array A is a permutation.
# Return 1 if the result is a permutation 0 if not

class PermCheck
	arr = [-1, 2, 3, 0]

	def self.solution(arr)

		h_table = {}
		result = 0
		# Create hash table to lookup the values arr needs to contain. h_table holds the permutation values 
		(1..arr.length).each do |value|
			h_table[value] = value
		end
		# Check if the elements of arr can return a permutation, if not h_table.empty? than a permutation is not possible
		arr.each do |value|	
			h_table.delete(value)
			result = 1 if h_table.empty?
		end

		 p result

	end

	PermCheck.solution(arr)


end