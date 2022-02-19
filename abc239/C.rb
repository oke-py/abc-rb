require 'set'

x1, y1, x2, y2 = gets.chomp.split.map(&:to_i)
z1 = Set[
  [x1 + 2, y1 + 1],
  [x1 + 1, y1 + 2],
  [x1 - 1, y1 + 2],
  [x1 - 2, y1 + 1],
  [x1 - 2, y1 - 1],
  [x1 - 1, y1 - 2],
  [x1 + 1, y1 - 2],
  [x1 + 2, y1 - 1],
]

z2 = Set[
  [x2 + 2, y2 + 1],
  [x2 + 1, y2 + 2],
  [x2 - 1, y2 + 2],
  [x2 - 2, y2 + 1],
  [x2 - 2, y2 - 1],
  [x2 - 1, y2 - 2],
  [x2 + 1, y2 - 2],
  [x2 + 2, y2 - 1],
]

puts (z1 & z2).count == 0 ? 'No' : 'Yes'
