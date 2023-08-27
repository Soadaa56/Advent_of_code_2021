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
p results

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