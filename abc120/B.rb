a, b, k = gets.chomp.split.map(&:to_i)
gcd = a.gcd(b)
divisor = []
1.upto(gcd) do |i|
  divisor << i if gcd % i == 0
end
puts divisor.reverse[k - 1]
