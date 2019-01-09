def bubble_sort(arr)
	sorted = false

	while !sorted
		sorted = true
		(0...arr.length-1).each do |index|
			if arr[index] > arr[index+1]
				arr[index], arr[index+1] = arr[index+1], arr[index]
				sorted = false
			end
		end 
	end
	arr
end

array=[4,5,7,1,3,77,3,54,6,-1]
p bubble_sort array