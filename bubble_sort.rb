require 'pry'
def bubble_sort(arr)
    for left in 0..arr.length-1 do
        for right in (left+1)..arr.length-1 do
            if arr[right]< arr[left]
                temp = arr[right]
                arr[right] = arr[left]
                arr[left] = temp
                binding.pry
            end
        end
    end
    return arr
end



print bubble_sort([4,3,78,2,0,2])
#=> [0,2,2,3,4,78]

print bubble_sort([5, 39, 2, 6, 13, 23, 19, -34])