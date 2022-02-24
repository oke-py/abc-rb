n, k, a = gets.split.map(&:to_i)
x = (a + k % n - 1) % n
puts x == 0 ? n : x
