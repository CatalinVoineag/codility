require "byebug"
require 'benchmark'
require 'bigdecimal/math'

class ZeroMatrix

# Zero Matrix: Write an algorithm such that if an element in an MxN matrix is 0, its entire row and
# column are set to O

	array = [ [1, 2, 3], 
						[1, 0, 5],
						[1, 2, 5],
						[1, 2, 5],
						[1, 2, 5],
						[1, 2, 5],
						[1, 2, 5],
						[1, 2, 5]
					]

	def self.solution(arr)
		Benchmark.bmbm(7) do |bm|
  		bm.report do 
				# Dupplicate array
				new_arr = Marshal.load( Marshal.dump(arr) )

				column_position = nil

				new_arr.each_with_index do |array, position|
					zero_position = array.index(0)
					if !zero_position.nil?
						# Save the position of the column for use to set the other arrays[position] to 0
						column_position = zero_position
						# Set the whole row to 0
						second = Array.new(array.count, 0)
						array.replace(second)
					end
				end
				# Go through array to set column to 0
				new_arr.each do |array|
					unless new_arr[column_position] == 0
						array[column_position] = 0
					end
				end
				p new_arr
			end
		end		
	end

	def self.solution2(arr)
		
		Benchmark.bmbm(7) do |bm|
			bm.report  do  
				zero  = nil
				arr.length.times do |row|
					if arr[row].include?(0)
						arr[row].each_with_index do |zeros, idx|
							if zeros == 0
								zero = idx
							else
								arr[row][idx] = 0
							end
						end
					end
				end

				arr = arr.transpose

				arr.length.times do |row|
					if zero == row
						arr[row].each_with_index do |zeros, idx|
							arr[row][idx] = 0
						end
					end
				end
				arr = arr.transpose

				 p arr
			end
		end

	end

	ZeroMatrix.solution(array)



end