# frozen_string_literal: true
upper_alph = [*'a'..'z']
lower_alph = [*'A'..'Z']

#ENCODE
def encode(upper_alph, lower_alph)

  p "Enter Text To Encode: "
  text = gets.chomp
  text_array = text.chars

  p "Enter Encrypt Shift Amount, (0 - 25): "
  shift_amount = gets.chomp.to_i
  shifted_letters = orig_alpha.pop(shift_amount)
  working_alpha = orig_alpha.unshift(*shifted_letters)
  p working_alpha

  code = []
  text_array.each do |letter|
    index = working_alpha.index(letter)

    if working_alpha.include?(letter)
      if letter == letter.upcase
        code.push(working_alpha[index].upcase)
        p "upcase #{letter}"
      else
        code.push(working_alpha[index])
        p "regular #{letter}"
      end
    else
      code.push(letter)
    end
  end

  code.join("")

end

p encode(alphabet)

