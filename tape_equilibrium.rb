# TapeEquilibrium
# Minimize the value |(A[0] + ... + A[P-1]) - (A[P] + ... + A[N-1])|.

# full description: https://app.codility.com/programmers/lessons/3-time_complexity/tape_equilibrium/

def solution(a)
  first_sum = a[0]
  second_sum = a.inject(&:+) - a.first
  result = (first_sum - second_sum).abs

  a[1..-2].each do |elem|
    first_sum = first_sum + elem
    second_sum = second_sum - elem
    tmp_result = (first_sum - second_sum).abs
    result = tmp_result if tmp_result < result
  end

  result
end
