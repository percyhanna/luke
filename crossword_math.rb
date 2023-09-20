def calculate_possibilities(size, len)
  raise "Word must be shorter than the size of the box" if len > size

  corner_len = len - 1

  long_word = corner_len > (size / 2)
  if long_word
    corner_len = size - corner_len
  end

  edge_width = size - 2 * corner_len
  edge_height = corner_len

  middle_width = size - 2 * corner_len
  middle_height = size - 2 * corner_len

  corner_count = corner_len * corner_len * 3 * 4
  edge_count = edge_width * edge_width * 4
  middle_count =
end

puts "What is the size of the square?"
size = gets.chomp.to_i

puts "What is the length of the word?"
len = gets.chomp.to_i

calculate_possibilities(size, len)
