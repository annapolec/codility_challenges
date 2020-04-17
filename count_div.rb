# CountDiv
# Compute number of integers divisible by k in range [a..b].

def solution(a, b, k)
  first_dividend = a
  remainder = first_dividend%k

  while remainder != 0 && first_dividend <= b do
    first_dividend += 1
    remainder = first_dividend%k
  end

  remainder == 0 ? (b - first_dividend) / k + 1 : 0
end
