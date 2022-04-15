# frozen_string_literal: true

def inside?(x, y)
  x.between?(0, 5000) && y.between?(0, 5000)
end

def valid?(v, point)
  inside?(*point[0]) && inside?(*point[1]) && v[point[0][0]].include?(point[0][1]) && v[point[1][0]].include?(point[1][1])
end

n = gets.to_i
ans = 0

# u = [[x1, y1], [x2, y2], ...]
# v[x1] = [y2, y3, y4, ...]
u = []
v = Array.new(5001) { [] }
n.times do
  x, y = gets.chomp.split.map(&:to_i)
  u << [x, y]
  v[x] << y
end

[*0...n].combination(2).each do |c|
  dx = u[c[0]][0] - u[c[1]][0]
  dy = u[c[0]][1] - u[c[1]][1]

  p1 = [[u[c[0]][0] - dy, u[c[0]][1] + dx], [u[c[1]][0] - dy, u[c[1]][1] + dx]]
  p2 = [[u[c[0]][0] + dy, u[c[0]][1] - dx], [u[c[1]][0] + dy, u[c[1]][1] - dx]]

  current = valid?(v, p1) || valid?(v, p2) ? (dx**2) + (dy**2) : 0
  ans = current if ans < current
end

puts ans
