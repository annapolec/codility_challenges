# MaxSliceSum
# Find a maximum sum of a compact subsequence of array elements.

# full description: https://app.codility.com/programmers/lessons/9-maximum_slice_problem/max_slice_sum/

def solution(a)
  max_sum = a[0]
  local_sum = a[0]

  a[1..a.length-1].each do |elem|
    local_sum = [elem, elem + local_sum].max
    max_sum = [max_sum, local_sum].max
  end

  max_sum
end
