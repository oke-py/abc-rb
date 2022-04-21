# frozen_string_literal: true

N, M = gets.chomp.split.map(&:to_i)
bulbs = []
M.times do
  s = gets.chomp.split.map(&:to_i)
  s.shift
  bulbs << s
end

ps = gets.chomp.split.map(&:to_i)

ans = 0

(1 << N).times do |bits|
  ok = true

  M.times do |i|
    on = 0
    bulbs[i].each do |s|
      on += 1 if bits[s - 1] != 0
    end

    if on % 2 != ps[i]
      ok = false
      break
    end
  end

  ans += 1 if ok
end

puts ans
