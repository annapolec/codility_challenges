# Triangle
# Determine whether a triangle can be built from a given set of edges.

def solution(a)
  numbers = a.sort
  (0..numbers.length-3).each do |index|
    triplet = numbers[index..index + 2]
    max_value = triplet.max
    sum = triplet.min(2).inject(&:+)

    return 1 if sum > max_value
  end

  0
end
