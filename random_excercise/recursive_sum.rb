def sum (array)

	array.empty? ? (return 0) : (return array[0]+=sum(array.pop(array.size-1)))
end

arr=[*1..100] 

p sum(arr)

