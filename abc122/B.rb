# frozen_string_literal: true

S = gets.chomp.chars
ans = 0
tmp = 0
S.each do |s|
  if %w[A C G T].include?(s)
    tmp += 1
    ans = [ans, tmp].max
  else
    tmp = 0
  end
end
puts ans
