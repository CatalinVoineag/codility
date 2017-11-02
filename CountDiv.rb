class CountDiv

	def self.solution(a, b, k)
		result = []
		for x in (a..b)
			result << x if (x % k == 0)
		end
		p result
	end

	CountDiv.solution(6, 11, 2)


end