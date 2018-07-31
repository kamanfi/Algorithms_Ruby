def quick_sort(arr)

	# quick sort algorithm that picks midlle element as pivot
	#base case
	if arr.size == 1 
		return [arr[0]]
	elsif arr.empty?
		return []
	end


	 pivot = arr[arr.size/2]

	larray=[] 
	same=[]		#hold all element that match pivot
	rarray=[]

	arr.each_with_index do |e, eindex|
		if e < pivot 
			larray << e 
		elsif e > pivot
			rarray << e
		else
			same << e	
		end
	end

	return (quick_sort(larray)  + same + quick_sort(rarray))
end



#testing
array = []
10.times do
	array << rand(100)
end

p "before sorting"
p array
p 'after sorting'
p quick_sort(array)
