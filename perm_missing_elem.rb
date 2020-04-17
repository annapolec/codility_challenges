# PermMissingElem
# Find the missing element in a given permutation.

# full description: https://app.codility.com/programmers/lessons/3-time_complexity/perm_missing_elem/

def solution(a)
 sorted_array = a.sort

 (0..sorted_array.length).each do |index|
     return index + 1 if sorted_array[index] != index + 1
 end
end
