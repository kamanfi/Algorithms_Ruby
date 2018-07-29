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

arr=[10,4,-3,4,1,50,46,32,424,-6,7]
bubble_sort(arr)
p arr