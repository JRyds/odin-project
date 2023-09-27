# Write a Ruby program that reads a JSON file and converts it to a Ruby hash.
#   Print out the keys and values of the hash.

require 'json'

file_path = File.join(__dir__, 'data.json')
json_string = File.read(file_path)
hash = JSON.parse(json_string)

test = hash.class
puts test.class
puts hash.class.inspect