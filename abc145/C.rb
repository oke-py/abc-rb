N = gets.to_i
towns = Array.new(N) { gets.chomp.split.map { |e| e.to_i } }
ans = 0
(1..N).to_a.permutation(N).each do |perm|
  distance = 0
  prev = nil
  perm.each do |i|
    distance += Math.sqrt((towns[i - 1][0] - prev[0])**2 + (towns[i - 1][1] - prev[1])**2) unless prev.nil?
    prev = towns[i - 1]
  end
  ans += distance
end
puts (ans / (1..N).inject(1, :*)).round(10)
