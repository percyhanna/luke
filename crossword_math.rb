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

  corner_size = corner_len * corner_len * 4
  edge_size = edge_width * edge_height * 4
  middle_size = middle_width * middle_height

  corner = 3
  if long_word
    edge = 1
    middle = 0
  else
    edge = 5
    middle = 8
  end

  corner * corner_size + edge * edge_size + middle * middle_size
end

puts "What is the size of the square?"
size = gets.chomp.to_i

puts "What is the length of the word?"
len = gets.chomp.to_i

total = calculate_possibilities(size, len)
puts "Total is: #{total}"
