# GenomicRangeQuery
# Find the minimal nucleotide from a range of sequence DNA.

def solution(s, p, q)
  result = []
  positions = { "A" => 0, "C" => 1, "G" => 2, "T" => 3 }

  prefix_occurences = build_prefix_occurences(s, positions)

  (0..p.length-1).each do |index|
    from = p[index]
    to = q[index]

    subset_occurences = calculate_subset_occurences(prefix_occurences[from], prefix_occurences[to + 1])

    result << 1 && next if subset_occurences[0] != 0
    result << 2 && next if subset_occurences[1] != 0
    result << 3 && next if subset_occurences[2] != 0
    result << 4 && next if subset_occurences[3] != 0
  end

  result
end

def build_prefix_occurences(s, positions_map)
  [[0,0,0,0]].tap do |result|
    s.chars.each do |letter|
      next_occurences = result.last.dup
      next_occurences[positions_map[letter]] += 1

      result << next_occurences
    end
  end
end


def calculate_subset_occurences(previous_subset, subset)
  [].tap do |result|
    subset.each_with_index do |elem, index|
      result << elem - previous_subset[index]
    end
  end
end
