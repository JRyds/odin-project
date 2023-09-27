# frozen_string_literal: true

def fibonacci(n)
  if n == 0
    return 0
  elsif n == 1
    return 1
  else
    return fibonacci(n-1) + fibonacci(n-2)
  end

end

print "Enter number: "
num = gets.chomp.to_i

puts "The result is #{fibonacci(num)}."

def merge_sort(arr)
  if arr.length < 2
    return arr
  else
    middle_index = arr.length / 2
    left_half = arr[0...middle_index]
    right_half = arr[middle_index..-1]

    sorted_left_half = merge_sort(left_half)
    sorted_right_half = merge_sort(right_half)

    final_sorted_elements = []
    index1, index2 = 0, 0

    while index1 < sorted_left_half.length && index2 < sorted_right_half.length
      if sorted_left_half[index1] < sorted_right_half[index2]
        final_sorted_elements << sorted_left_half[index1]
        index1 += 1
      else
        final_sorted_elements << sorted_right_half[index2]
        index2 += 1
      end
    end

    while index1 < sorted_left_half.length
      final_sorted_elements << sorted_left_half[index1]
      index1 += 1
    end

    while index2 < sorted_right_half.length
      final_sorted_elements << sorted_right_half[index2]
      index2 += 1
    end

    return final_sorted_elements
  end
end
