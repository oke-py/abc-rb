N = gets.to_i
pn = gets.split.join.to_i
qn = gets.split.join.to_i
numbers = (1..N).to_a.permutation.map do |perm|
  perm.join.to_i
end.sort
a = numbers.index(pn)
b = numbers.index(qn)
puts a < b ? b - a : a - b
