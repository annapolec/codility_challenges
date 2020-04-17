# FrogJmp
# Count minimal number of jumps from position X to Y.

def solution(x, y, d)
  distance = y-x
 (distance.to_f / d).ceil
end
