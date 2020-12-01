def load_input
  File.readlines('input_day1.txt', chomp: true).map(&:to_i)
end

def sum_to_2020(input)
  input.each_with_index do |n, i|
    input.each_with_index do |m, j|
      next if i == j

      return [n, m] if n + m == 2020
    end
  end
end

def multiply_2020_values(vals)
  vals.reduce(&:*)
end

def find_triple_sum(input)
  input.combination(3).to_a.keep_if { |trip| trip.reduce(&:+) == 2020 }.flatten
end

inp = load_input
pair = sum_to_2020(inp)
print 'Pair solution: '
p multiply_2020_values(pair)
print 'Triple solution: '
triple = find_triple_sum(inp)
p multiply_2020_values(triple)
