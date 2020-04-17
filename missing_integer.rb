# MissingInteger
# Find the smallest positive integer that does not occur in a given sequence.

def solution(a)
  positives = a.select { |elem| elem > 0 }.uniq.sort

  positives.each_with_index do |elem, index|
    return index + 1 if elem != index + 1
  end

  positives.length + 1
end
