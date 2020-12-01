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

inp = load_input
values = sum_to_2020(inp)
p multiply_2020_values(values)
