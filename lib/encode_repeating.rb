# A method that updates the string by replacing consecutive repeating characters
# with a number representing the frequency. The replacement is done only if the
# string length will get reduced by this process.

# Time complexity: ?
# Space complexity: ?
def encode_repeating(my_string)
  return false unless my_string
  index = 0
  start_index = 0
  while index < my_string.length
    char = my_string[index]
    until (my_string[index] != char) || index == my_string.length
      index += 1
    end

    str_slice = my_string.slice(start_index...index)
    if str_slice.length >= 3
      my_string.sub!(str_slice, "#{char}#{str_slice.length}")
      index = index - (str_slice.length - 2)
    end
    start_index = index
  end
  return my_string
end
