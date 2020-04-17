# OddOccurencesInArray
# Find value that occurs in odd number of elements.

def solution(a)
 sorted_array = a.sort

  index = 0
  while index < sorted_array.length do
    break unless sorted_array[index] == sorted_array[index+1]
    index += 2
  end

  sorted_array[index]
end
