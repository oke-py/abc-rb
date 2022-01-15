n, q = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

res = {}
a.each_with_index do |v, i|
  if res.include?(v.to_s)
    res[v.to_s] << i + 1
  else
    res[v.to_s] = [i + 1]
  end
end

q.times do
  x, k = gets.split.map(&:to_i)
  puts !res.include?(x.to_s) || res[x.to_s].size < k ? '-1' : res[x.to_s][k - 1]
end
