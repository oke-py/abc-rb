# frozen_string_literal: true

A, B, C, X, Y = gets.chomp.split.map(&:to_i)

ans = 10**10
0.step(by: 2, to: [X, Y].max * 2) do |c|
  price = [0, A * (X - (c / 2))].max + [0, B * (Y - (c / 2))].max + (C * c)
  ans = price if price < ans
end
puts ans
