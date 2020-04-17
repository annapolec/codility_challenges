# FrogRiverOne
# Find the earliest time when a frog can jump to the other side of a river.

# full description: https://app.codility.com/programmers/lessons/4-counting_elements/frog_river_one/

def solution(x, a)
  counter = {}

  a.each_with_index do |elem, index|
    counter[elem] = 1
    return index if counter.size == x
  end

 -1
end
