# frozen_string_literal: true

# p 'Enter Text For Cipher:'
# text = gets.chomp
#
# p 'Select Shift Amount (1 to 25):'
# shift = gets.chomp.to_i

lower_alph = [*'a'..'z']
upper_alph = [*'A'..'Z']


#ENCODE
def encode(upper_alph, lower_alph, text_array, shift_amount)


  lower_shift = lower_alph.map.with_index do |e_letter, index|
    new_low_index = (index - shift_amount) % lower_alph.length
    lower_alph[new_low_index]
  end

  upper_shift = upper_alph.map.with_index do |_letter, index|
    new_up_index = (index - shift_amount) % upper_alph.length
    upper_alph[new_up_index]
  end

  code = []
  text_array.each do |letter|
    if upper_shift.include?(letter)
      index = upper_alph.index(letter)
      code.push(upper_shift[index])
    elsif lower_shift.include?(letter)
      index = lower_alph.index(letter)
      code.push(lower_shift[index])
    else
      code.push(letter)
    end
  end
  code.join('')
end

# MAIN PROGRAM
loop do
  puts 'Select [D]ecode, [E]ncode or e[X]it:'
  choice = gets.chomp.downcase

  case choice
  when 'd'
    p 'Enter Text To Decode: '
    text = gets.chomp
    text_array = text.chars

    p 'Enter Decode Shift Amount, (0 - 25): '
    shift_amount = gets.chomp.to_i
    neg_shift_amount = -shift_amount
    puts encode(lower_alph, upper_alph, text_array, neg_shift_amount)
  when 'e'
    p 'Enter Text To Encode: '
    text = gets.chomp
    text_array = text.chars

    p 'Enter Encrypt Shift Amount, (0 - 25): '
    shift_amount = gets.chomp.to_i
    puts encode(lower_alph, upper_alph, text_array, shift_amount)
  when 'x'
    puts 'Goodbye'
    break
  end
end


