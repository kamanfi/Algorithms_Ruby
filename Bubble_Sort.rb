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

array=[4,5,7,1,3,77,3,54,6,-1]
p bubble_sort array