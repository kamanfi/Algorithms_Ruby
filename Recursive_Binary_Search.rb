def r_binary_search(arr, element)

	if arr.empty?					# if array is empty
		return "array is empty"
	end

	middle= arr.size / 2			#

	if (arr[middle] == element) 	#if element is found return it
		return middle
	elsif arr.size == 1				# will only run if size is one and it is not element due to code above
		return "not found"
	elsif element < arr[middle]
		 n_array=arr.slice(0,middle) #halves array
		 if r_binary_search(n_array,element).is_a?(Integer) #a string is returned if element is not found. 
		 	return middle-r_binary_search(n_array,element)
		 else
		 	return "not found"
		 end

	elsif element > arr[middle]
		 n_array=arr.slice(middle,arr.size)
		if r_binary_search(n_array,element).is_a?(Integer)
		 	return middle+r_binary_search(n_array,element)
		 else
		 	return "not found"
		end
	end			
end

array=[*1..1000]
p r_binary_search(array,463)
p r_binary_search(array, 1000)
p r_binary_search(array, 0)
p r_binary_search(array, -1)
p r_binary_search(array,1)
p r_binary_search([], 34)
