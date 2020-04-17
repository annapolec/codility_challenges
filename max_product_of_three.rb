# MaxProductOfThree
# Maximize A[P] * A[Q] * A[R] for any triplet (P, Q, R).

def solution(a)
  sorted_array = a.sort

  greater_or_eql_to_zero_numbers = sorted_array.last >= 0
  negative_numbers = sorted_array.first < 0

  mixed_signs = greater_or_eql_to_zero_numbers && negative_numbers

  if mixed_signs
    first_product = sorted_array[0] * sorted_array[1] * sorted_array[-1]
    second_product = sorted_array[-1] * sorted_array[-2] * sorted_array[-3]

    [first_product, second_product].max
  else
    sorted_array[-3..-1].inject(&:*)
  end
end
