if ARGV.empty?
  data = DATA.readlines(chomp: true)
else
  data = File.readlines(ARGV[0], chomp: true)
end

# Part 1

# results = data
#     .map(&:to_i)
#     .chunk_while { |a, b| b > a}
#     .map { _1.size - 1}
#     .sum

results = data
    .map(&:to_i)


def sum_by_3(arr)
  arr = arr.each_cons(3).map(&:sum).chunk_while { |a, b| b > a }
 # arr.map(&:size)
  # arr.chunk_while { |a, b| b > a }
  arr.map { _1.size - 1}.sum
end

p sum_by_3(results)

__END__
199
200
208
210
200
207
240
269
260
263