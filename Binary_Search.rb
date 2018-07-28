def binary_search(array, element)
	if array.empty?
		return "array is empty"
	end
	start_index = 0
	end_index = array.size-1
	middle = array.size/2

	while start_index <= end_index 
		if array[middle] == element
			return "#{element} found at index #{middle}"
		end

		
		if array[middle] < element 
			start_index = middle+1  
			middle = (start_index + end_index)/2 
		elsif array[middle] > element
			end_index = middle-1	
			middle = (start_index+end_index)/2
		end
	end
	return "element not found"
end

#test
array=[*1..1000]
p binary_search(array,463)
p binary_search(array, 1000)
p binary_search(array, 0)
p binary_search(array, -1)
p binary_search(array,1)
p binary_search([], 34)

