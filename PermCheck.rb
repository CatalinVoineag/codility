require 'byebug'

class PermCheck

	arr = [1]

	def self.solution(arr)
		arr.sort!
		result = 1
		arr.each_with_index do |value, position|
			
			if value.next == arr[position.next] || value == arr.last 
				if value == arr[position.pred]
					result = 0
				end
			else
				result = 0
			end
		end
		p result
	end

	def self.solution2(arr)
		arr.sort!
		p 1 if arr.size == 1 && arr.first == 1
		p 0 if arr.size == 1 || arr.empty?
		result = 1
		arr.each_with_index do |value, position|
			
			if value.next == arr[position.next] || value == arr.last 
				if value == arr[position.pred]
					result = 0
				end
			else
				result = 0
			end
		end
		p result
	end

	PermCheck.solution2(arr)

end