# MaxCounters
# Calculate the values of counters after applying all alternating operations: increase counter by 1; set value of all counters to current maximum.

def solution(n, a)
  result = Array.new(n, 0)
  max_value = 0
  max_value_used = false

  a.each do |elem|
    if elem <= n
      result[elem-1] += 1
      if max_value < result[elem-1]
        max_value = result[elem-1]
        max_value_used = false
      end
    else
      next if max_value_used
      result.fill(max_value)
      max_value_used = true
    end
  end

  result
end
