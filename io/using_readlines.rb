# Exercise: Using readlines
# For this exercise, we will use OpenURI's version of open,
# which gives us a read-only interface for accessing files online:

# Write a program that:
#
# Reads hamlet.txt from the given URL
# Saves it to a local file on your hard drive named "hamlet.txt"
# Re-opens that local version of hamlet.txt and prints out every 42nd line to the screen
require 'rest-client'

response = RestClient.get("http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt")

File.open(File.join(__dir__, "hamlet.txt"), "w") do |file|
  file.write(response.body)
end




File.open(File.join(__dir__, "hamlet.txt")).readlines.each_with_index do |line, index|
  if index % 42 == 0
    puts "#{index}: #{line}"
  end
end
