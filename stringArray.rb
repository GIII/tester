def dasherize_number(num)
	num_s = num.to_s
	idx1 = 0
	result = nil

	while idx1 < num_s.length
		digit = num_s[idx1].to_i

		if idx1 == 0 && (digit%2 != 0)
			result += digit.to_s
			result += "-"
		elsif idx1 != 0 && idx1 != num_s.length-1 && digit%2!=0
			result += "-"
			result += digit.to_s
			result += "-" 
		elsif idx1 == num_s.length-1 && digit%2!=0
			result += "-"
			result += digit.to_s
		end

		idx1 += 1
	end	

	return result
end