# frozen_string_literal: true

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false
    (1..n-1).each do |i|
      if array[i-1] > array[i]
        array[i-1], array[i] = array[i], array[i-1]
        swapped = true
      end
    end
    break unless swapped
  end
  array
end

p bubble_sort([4,3,78,2,0,2])
