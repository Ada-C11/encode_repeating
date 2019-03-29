# A method that updates the string by replacing consecutive repeating characters
# with a number representing the frequency. The replacement is done only if the
# string length will get reduced by this process.

# Time complexity: O(n) where n is the number of string elements
# Space complexity: O(1)
def encode_repeating(my_string)
  return my_string if !my_string || my_string.length < 2
  current, check_next = 0, 1
  until current == my_string.length
    check_next += 1 while my_string[current] == my_string[check_next]
    repeats = check_next - current
    if repeats > 2
      my_string[current + 1] = repeats.to_s
      check_next -= my_string.slice!((current + repeats.to_s.length + 1)...check_next).length
    end
    current = check_next
  end
  return my_string
end
