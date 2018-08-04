def merge_sort(array)

	if array.size == 1 # base
		return array
	end

	larray=array[0,array.size/2]
	rarray=array[array.size/2, array.size]

	  larray = merge_sort(larray) 
	  rarray = merge_sort(rarray)

	   mergedArray=[]
	   
	   while !larray.empty? || !rarray.empty?
	   	if larray[0] < rarray[0]
	   		mergedArray << larray.shift
	   	else
	   		mergedArray << rarray.shift
	   	end
	   	if larray.empty? 
	   		mergedArray+=rarray
	   		rarray=[]
	   	elsif rarray.empty?
	   		mergedArray+=larray
	   		larray=[]
	   	end
	   end
	   return mergedArray
	end



array = []
10.times do
	array << rand(100)
end

p "before sorting"
p array
p 'after sorting'
p merge_sort(array)
