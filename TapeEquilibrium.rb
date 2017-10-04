require 'byebug'
require 'awesome_print'
class TapeEquilibrium

 	example = [3, 1, 2, 4, 3]   

 # 	P = 1, difference = |3 − 10| = 7 
	# P = 2, difference = |4 − 9| = 5 
	# P = 3, difference = |6 − 7| = 1 
	# P = 4, difference = |10 − 3| = 7 
	 

 	def self.solution(arr)
 		size = arr.size
 		results = []
 		first_array_sum = 0
 		arr.each_index do |i|
 			first_array_sum += arr[i]
 			
 			second_part_array = arr[i+1, size]
 			second_array_sum = 0
 			byebug
 			second_part_array.map{ |x| second_array_sum += x }

 			difference = first_array_sum - second_array_sum
 			difference = difference.gcd(difference) 
 			
 			results << difference
 			break if size - i == 2
 		end

 		puts results.min
 	end

 	def self.solution2(arr)
 		size = arr.size
 		results = []
 		first_array_sum = 0
 		arr.each_index do |position|
 			first_array_sum += arr[position]

 			second_array_sum = arr[position+1, size].inject(0, :+)

 			difference = first_array_sum - second_array_sum
 			difference = difference.gcd(difference)

 			results << difference
 			break if size - position == 2
 		end
 		puts results.min
 	end
         
	TapeEquilibrium.solution2(example)

end