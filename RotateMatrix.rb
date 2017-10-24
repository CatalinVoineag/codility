require 'byebug'

class RotateMatrix

# Rotate Matrix: Given an image represented by an NxN matrix, where each pixel in the image is 4
# bytes, write a method to rotate the image by 90 degrees. (an you do this in place?

	# 4 1 4			3 3 4
	# 3 2 0  => 7 2 1
	# 3 7 0     0 0 4

	arrays = [ [4, 1, 4],
						 [3, 2, 0],
						 [3, 7, 0],
				   ]



	def self.solution(arrs, number)
		# FIRST, YOU NEED TO DEEP COPY THE ARRAY, Otherwise arrs will be changed when you change new_array
		new_arr = Marshal.load( Marshal.dump(arrs) )


		# Range from 0 to number-1
		for x in (0..number -1)
			for y in (0..number-1).reverse_each
				# Here. We insert in the first array new_array[0][0] the value from the last array arrs[2][0]
				# So,new_array first line will look like [3, 3, 4] by getting the values from the arrs[2][0], arrs[1, 0] arrs[0,0]
				 new_arr[x][number-y-1] = arrs[y][x]
			end
		end

		p new_arr

	end

	RotateMatrix.solution(arrays, 3)

end