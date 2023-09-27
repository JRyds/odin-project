# frozen_string_literal: true
require 'rest-client'

# Exercise: Copy Wikipedia's front page to a file using block notation
# Using the RestClient gem we learned about in the Methods URL-fetching chapter,
# write a script that accesses http://en.wikipedia.org/
# and copies it to wiki-page.html on your hard drive.
# http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt.

# wiki_url = "https://en.wikipedia.org/wiki/Main_Page"
# wiki_local_filename = "wiki-page.html"
#
# File.open(wiki_local_filename, "w") do |file|
#   file.write(RestClient.get(wiki_url))
# end

# count = 0
# File.open(File.join(__dir__, "sample.txt")).readlines.each do |line|
#   puts line + " " + count.to_s
#   count += 1
# end
