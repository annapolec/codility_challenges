# Dominator
# Find an index of an array such that its value occurs at more than half of indices in the array.

def solution(a)
  occurences = Hash.new(0)
  dominator_number = a.length.to_f / 2

  a.each_with_index do |number, index|
    occurences[number] += 1
    return index if occurences[number] > dominator_number
  end
  -1
end
