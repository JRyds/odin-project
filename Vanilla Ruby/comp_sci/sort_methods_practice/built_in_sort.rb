# frozen_string_literal: true

#Basic Sorting: Create an array of integers and sort them in ascending order using Ruby's built-in sort method.
# Descending Sort: Take the same array and sort it in descending order.

random_array = [42, 17, 88, 29, 63, 4, 95, 11, 50, 32, 76, 9, 71, 38, 21, 55, 67, 2, 31, 85]

new_arr = random_array.sort

dec_sort = random_array.sort { |a, b| b <=> a}
dec2_sort = random_array.sort.reverse

p new_arr
p dec_sort
p dec2_sort

#String Sorting: Create an array of strings and sort them alphabetically. Try both ascending and descending.
# Sort by Length: Create an array of strings and sort them based on their length, not alphabetically.

string_array = ["banana", "apple", "grape", "cherry", "orange"]

new_str_arr = string_array.sort_by { |str| str.length }
p new_str_arr

#Custom Sort: Create an array of hashes, each hash containing a "name" and "age" key.
# Sort the array by age in ascending order using a block with the sort method.

people = [
  { name: "Alice", age: 25 },
  { name: "Bob", age: 30 },
  { name: "Charlie", age: 22 }
]

sorted_people = people.sort { |a, b| a[:age] <=> b[:age] }

p sorted_people