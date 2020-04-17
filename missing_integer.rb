# MissingInteger
# Find the smallest positive integer that does not occur in a given sequence.

# full description: https://app.codility.com/programmers/lessons/4-counting_elements/missing_integer/

def solution(a)
  positives = a.select { |elem| elem > 0 }.uniq.sort

  positives.each_with_index do |elem, index|
    return index + 1 if elem != index + 1
  end

  positives.length + 1
end
