# BInaryGap
# Find longest sequence of zeros in binary representation of an integer.

def solution(n)
  binary_gaps = n.to_s(2).scan /0+1/

  return 0 if binary_gaps.empty?

  binary_gaps.map(&:length).max - 1
end
