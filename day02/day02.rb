if ARGV.empty?
  data = DATA.each_line(chomp: true)
else
  data = File.readlines(ARGV[0], chomp: true)
end

results = data
    .map {|line| line.split(' ')}



@horizontal = 0
@depth = 0

def instructions(ins)
  ins.each do |line|
    if line[0] == 'down'
      @depth += line[1].to_i
    elsif line[0] == 'up'
      @depth -= line[1].to_i
    else
      @horizontal += line[1].to_i
    end
  end
end

def total
  @horizontal * @depth
end


instructions(results)
p total

__END__
forward 5
down 5
forward 8
up 3
down 8
forward 2