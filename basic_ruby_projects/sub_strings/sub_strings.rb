# frozen_string_literal: true

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  # Convert the string and dictionary to lowercase to perform case-insensitive matching
  string = string.downcase
  dictionary = dictionary.map(&:downcase)

  # Create a new hash to store the results
  results = Hash.new(0)

  # Split the input string into words using the split method
  words = string.split(/\W+/)
  p words

  # Iterate through each word in the string
  words.each do |word|
    # Iterate through each substring in the dictionary
    dictionary.each do |substring|
      # If the substring is found in the word, increment its count in the results hash
      if word.include?(substring)
        results[substring] += 1
      end
    end
  end

  # Return the results hash
  return results
end

puts substrings("below", dictionary)

puts substrings("Howdy partner, sit down! How's it going?", dictionary)