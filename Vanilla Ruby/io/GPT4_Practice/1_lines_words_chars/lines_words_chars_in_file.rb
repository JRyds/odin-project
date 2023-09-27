# frozen_string_literal: true

# Write a Ruby program that reads a text file and prints out the number of
# lines, words, and characters in it.

line_count = 0
word_count = 0
char_count = 0
File.open(File.join(__dir__, "hamlet_1.txt")).each_line do |line|
  line_count += 1
  word_count += line.scan(/\b\w+\b/).count
  char_count += line.length
end

puts "Hamlet has #{line_count} lines."
puts "Hamlet has #{word_count} words."
puts "Hamlet has #{char_count} characters."



