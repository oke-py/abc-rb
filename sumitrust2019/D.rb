# frozen_string_literal: true

N = gets.to_i
S = gets.chomp.chars.map(&:to_i)

ans = 0
[*0..9].repeated_permutation(3).each do |v|
  i = S.index(v[0])
  next if i.nil?

  j = S[(i + 1)...N].index(v[1])
  next if j.nil?

  k = S[(i + j + 2)...N].index(v[2])
  ans += 1 unless k.nil?
end

puts ans
