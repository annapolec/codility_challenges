# PermCheck
# Check whether array A is a permutation.

# full description: https://app.codility.com/programmers/lessons/4-counting_elements/perm_check/

def solution(a)
 counter = Hash.new(0)
 a.each do |elem|
 counter[elem] += 1
 end

 (1..a.size).each do |number|
 return 0 if counter[number] != 1
 end

 1
end
