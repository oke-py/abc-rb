# frozen_string_literal: true

N, A, B = gets.chomp.split.map(&:to_i)

a_white = true
s = []

N.times do
  A.times do
    t = []
    b_white = a_white

    N.times do
      c = b_white ? '.' : '#'
      t << (c * B)
      b_white = !b_white
    end

    s << t.join
  end

  a_white = !a_white
end

puts s.join("\n")
