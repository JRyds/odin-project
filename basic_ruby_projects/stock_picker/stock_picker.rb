# frozen_string_literal: true

# Random numbers

array_1 = [13, 16, 7, 22, 14, 27, 17, 27, 18, 14, 10, 26, 26, 23, 10]
array_2 = [4, 23, 9, 26, 7, 19, 22, 18, 6, 16, 2, 22, 7, 29, 9]
array_3 = [14, 26, 28, 11, 8, 5, 10, 11, 18, 25, 3, 3, 2, 14, 17]
array_4 = [25, 15, 30, 18, 26, 3, 3, 15, 15, 15, 28, 17, 16, 10, 15]
array_5 = [29, 2, 30, 6, 22, 11, 5, 16, 26, 25, 22, 6, 12, 14, 11]
array_6 = [25, 17, 26, 6, 28, 16, 23, 26, 20, 19, 23, 4, 5, 14, 5]

# Edge cases
# first number is the highest in the set
array_7 = [30, 11, 27, 23, 5, 21, 29, 15, 22, 15, 2, 3, 16, 25, 7]
# last number is the lowest in the set
array_8 = [14, 28, 6, 22, 15, 26, 24, 23, 10, 25, 27, 19, 21, 2, 3]



def stock_picker(prices)
  max_profit = 0
  best_days = [0, 0]

  prices.each_with_index do |buy_price, buy_day|
    prices[buy_day+1..-1].each_with_index do |sell_price, sell_day|
      total_profit = sell_price - buy_price
      if total_profit > max_profit
        max_profit = total_profit
        best_days = [buy_day, buy_day+sell_day+1]
      end
    end
  end

  return best_days
end

puts stock_picker(array_2)