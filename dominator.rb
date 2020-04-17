# Dominator
# Find an index of an array such that its value occurs at more than half of indices in the array.

# full description: https://app.codility.com/programmers/lessons/8-leader/dominator/

def solution(a)
  occurences = Hash.new(0)
  dominator_number = a.length.to_f / 2

  a.each_with_index do |number, index|
    occurences[number] += 1
    return index if occurences[number] > dominator_number
  end
  -1
end
