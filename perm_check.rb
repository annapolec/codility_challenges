# PermCheck
# Check whether array A is a permutation.

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
