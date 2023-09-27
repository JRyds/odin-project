# frozen_string_literal: true

# Write a Ruby program that reads a HTML file and extracts all the links from it.
#  Print out the links and their corresponding text.

require 'nokogiri'
require 'open-uri'

puts "Paste in URL:"
url = gets.chomp

html = URI.open(url).read
doc = Nokogiri::HTML(html)

links = doc.css('a').map { |link| link['href'] }


http_links = links.select { |link| link.start_with?("http", "https") }

puts http_links
