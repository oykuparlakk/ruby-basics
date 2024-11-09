def bubble_sort(arr)
  n = arr.length
  for i in 0...(n - 1) do
    for j in 0...(n - i - 1) do
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] > arr[j + 1]
    end
  end
  print arr
end

bubble_sort([10, 10, 5, 4, 6, 4, 3, 2, 0])
