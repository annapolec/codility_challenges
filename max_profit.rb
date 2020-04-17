# MaxProfit
# Given a log of stock prices compute the maximum possible earning.

# full description: https://app.codility.com/programmers/lessons/9-maximum_slice_problem/max_profit/

def solution(a)
  return 0 if a.length < 2

  max_profit = 0
  min_buying_price = 200001
  local_max_profit = 0

  a.each do |elem|
    min_buying_price = [min_buying_price, elem].min
   local_max_profit = elem - min_buying_price
   max_profit = [max_profit, local_max_profit].max
  end

  max_profit
end
