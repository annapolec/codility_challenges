# Brackets
# Determine whether a given string of parentheses (multiple types) is properly nested.

# full description: https://app.codility.com/demo/results/training3ZMTFC-938/#

def solution(s)
  return 1 if s.empty?

  input = []
  opening_brackets = ["{", "[", "("]
  brackets_map = { "{" => "}", "[" => "]", "(" => ")"}

  result = 1
  only_opening_brackets = true

  s.chars do |char|
    if opening_brackets.index(char)
      input << char
    else
      only_opening_brackets = false
      last_opening_bracket = input.pop

      if char != brackets_map[last_opening_bracket]
        result = 0
        break
      end
    end
  end

  result =  0 if only_opening_brackets || input.length > 0
  result
end
