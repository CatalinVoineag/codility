require 'byebug'

class MissingInteger

	arr = [1, 3, 6, 4, 1, 2] 

	def self.solution(arr)
		
		b = Array.new(arr.length, 0)

		arr.each_with_index do | value , i |
      b[value-1] = value if value >= 1 && value <= arr.length
    end

    for i in 0..arr.length  
      p i + 1 if b[i] == 0
    end

    p a.length + 1

	end

	MissingInteger.solution(arr)

end