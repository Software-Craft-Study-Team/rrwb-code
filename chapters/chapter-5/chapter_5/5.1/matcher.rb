class Matcher
  def match(expected, actual, clip_limit, delta) 
    actual = clip_too_large_values(actual, clip_limit)

    actual.length == expected.length && all_entries_within_delta?(actual, expected, delta)
  end

  def clip_too_large_values(actual, clip_limit)
    actual.map { |val| [val, clip_limit].min }
  end

  def all_entries_within_delta?(actual, expected, delta)
    actual.each_index { |i|
      return false if (expected[i] - actual[i]).abs > delta
    }
    return true
  end
end


# A. Use Extract Method to make the comments in match() redundant.

# B. Can everything important about the code be communicated using the code alone? Or do comments have a place?

# C. Find some code you wrote recently. Odds are good that you commented it. Can you eliminate the need for some of those comments by making the code reflect your intentions more directly?
