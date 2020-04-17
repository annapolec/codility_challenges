# OddOccurencesInArray
# Find value that occurs in odd number of elements.

# full description: https://app.codility.com/programmers/lessons/2-arrays/odd_occurrences_in_array/

def solution(a)
 sorted_array = a.sort

  index = 0
  while index < sorted_array.length do
    break unless sorted_array[index] == sorted_array[index+1]
    index += 2
  end

  sorted_array[index]
end
