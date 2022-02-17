n, m = gets.chomp.split.map(&:to_i)
ss = []
m.times do
  tmp = gets.chomp.split.map(&:to_i)
  tmp.shift
  ss << tmp
end

ps = gets.chomp.split.map(&:to_i)

ans = 0
(1 << n).times do |bit|
  valid = true
  m.times do |i|
    count = ss[i].count { |s| bit[s - 1] == 1 }

    if count % 2 != ps[i]
      valid = false
      break
    end
  end

  ans += 1 if valid
end

puts ans
