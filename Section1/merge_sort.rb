def merge_sort(arr)
  return arr if arr.length <= 1

  mid = arr.length / 2
  left = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid...arr.length])

  merge(left, right)
end

def merge(left, right)
  sorted = []

  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end

  sorted + left + right
end

arr = [8, 247, 43, 3, 91, 2, 80]
sorted_arr = merge_sort(arr)
puts sorted_arr.inspect
