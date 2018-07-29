def bubble_sort(arr)

	arr.each do |i|
		arr.each_with_index do |e, eindex|
			if eindex < arr.size-1
				if arr[eindex] > arr[eindex+1]
					arr[eindex] = arr[eindex+1]
					arr[eindex+1] = e
				end
			end
		end
	end
end

array=[*1..1000]
p binary_search(array,463)
p binary_search(array, 1000)
p binary_search(array, 0)
p binary_search(array, -1)
p binary_search(array,1)
p binary_search([], 34)