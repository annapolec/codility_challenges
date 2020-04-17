# Brackets
# Determine whether a given string of parentheses (multiple types) is properly nested.

# full description: https://app.codility.com/demo/results/training3ZMTFC-938/#

def solution(s)
  return 1 if s.empty?

  input = []
  opening_brackets = ["{", "[", "("]
  brackets_map = { "{" => "}", "[" => "]", "(" => ")"}

  s.chars do |char|
    if opening_brackets.index(char)
      input << char
    elsif char != brackets_map[input.pop]
      return 0
    end
  end

  input.length > 0 ? 0 : 1
end
