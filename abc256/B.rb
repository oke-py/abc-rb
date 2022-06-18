# frozen_string_literal: true

N = gets.to_i
A = gets.chomp.split.map(&:to_i)

p = 0
x = [0, 0, 0, 0]
A.each do |a|
  x[0] = 1

  [3, 2, 1, 0].each do |v|
    if a + v <= 3
      x[a + v] = x[v]
    else
      p += x[v]
    end

    x[v] = 0
  end
end

puts p
