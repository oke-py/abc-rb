# frozen_string_literal: true

N, Q = gets.chomp.split.map(&:to_i)
s = gets.chomp * 2

head = 0

Q.times do
  t, x = gets.chomp.split.map(&:to_i)

  case t
  when 1
    head = (N + head - x) % N
  when 2
    puts s[(head + x - 1) % N]
  end
end
