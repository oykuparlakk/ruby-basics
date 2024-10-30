def bubble_sort(array)
  n = array.length
  swapped = true

  until swapped == false
    swapped = false

    (n - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
  end

  print array
end



bubble_sort([10,10,5,4,6,4,3,2,0])