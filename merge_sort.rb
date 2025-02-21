def merge_sort(arr)
  return arr if arr.length <= 1 # base case

  mid = arr.length / 2 # find middle index
  left = merge_sort(arr[0...mid]) # recursively sort the left half
  right = merge_sort(arr[mid..-1]) # recursively sort the right half

  sorted = []

  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift # remove first element from left and add to sorted
    else 
      sorted << right.shift # remove first element from right and add to sorted
    end
  end

  sorted + left + right
end

print merge_sort([105, 79, 100, 110])