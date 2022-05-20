D = gets.to_i
N = gets.to_i
M = gets.to_i

ds = [0]
(N - 1).times do
  ds << gets.to_i
end
ds.sort!

ks = []
M.times do
  ks << gets.to_i
end

ks.map! do |k|
  i = ds.bsearch_index { |d| d > k }
  if i.nil?
    [D - k, k - ds.last].min
  else
    [k - ds[i - 1], ds[i] - k].min
  end
end

puts ks.sum
