# FrogJmp
# Count minimal number of jumps from position X to Y.

# full description: https://app.codility.com/programmers/lessons/3-time_complexity/frog_jmp/

def solution(x, y, d)
  distance = y-x
 (distance.to_f / d).ceil
end
