require "byebug"

class FrogRiverOne

	arr = [1, 5, 6, 5, 4, 3, 3, 2, 2, 1]

	def self.solution(arr, number)
		if !arr.nil? || !arr.empty?
			# min = arr.sort.first
			range = (1..number).to_a 
		end

		if !arr.include?(number)
			p -1
		end

		counter = 0
		position = nil
		while !arr.empty? || !arr.nil?
			byebug
			range = range.drop(arr[counter]) if range.include?(arr[counter])
			
			

			if range.empty? 
				position = counter
				break
			end

			counter += 1
			
		end

			p position

	end


	FrogRiverOne.solution([2,2,2,2], 2)

end