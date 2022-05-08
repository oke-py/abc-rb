# frozen_string_literal: true

N, Q = gets.chomp.split.map(&:to_i)
a = [*0..N] # ボールの並び順
b = [*0..N] # ボールiの位置

Q.times do
  x = gets.to_i
  if b[x] == N
    tmp = a[N - 1]
    a[N - 1], a[N] = a[N], a[N - 1]
    b[tmp] = N
    b[x] = N - 1
  else
    tmp = a[b[x] + 1]
    a[b[x]], a[b[x] + 1] = a[b[x] + 1], a[b[x]]
    b[tmp], b[x] = b[x], b[tmp]
  end
end

a.shift
puts a.join(' ')
