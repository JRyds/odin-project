# frozen_string_literal: true

# 2 - Write a Ruby program that reads a CSV file and prints out the average
# of the values in each column.
require 'csv'

# Construct an absolute path to the CSV file
csv_path = File.expand_path('numbers.csv', __dir__)

avg_a = 0
avg_b = 0
avg_c = 0
avg_d = 0
avg_e = 0

row_count = 0
# Open the CSV file and read its contents
CSV.foreach(csv_path, headers: true) do |row|
  avg_a += row['A'].to_i
  avg_b += row['B'].to_i
  avg_c += row['C'].to_i
  avg_d += row['D'].to_i
  avg_e += row['E'].to_i
  row_count += 1
end
puts "The average of column A is: #{avg_a / row_count}"
puts "The average of column B is: #{avg_b / row_count}"
puts "The average of column C is: #{avg_c / row_count}"
puts "The average of column D is: #{avg_d / row_count}"
puts "The average of column E is: #{avg_e / row_count}"
