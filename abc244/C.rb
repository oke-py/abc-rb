# frozen_string_literal: true

$stdout.sync = true

N = gets.to_i
numbers = (1..((N * 2) + 1)).to_a
puts numbers.shift
$stdout.flush
while v = gets.to_i
  exit if v.to_i.zero?
  numbers.delete(v)
  puts numbers.shift
  $stdout.flush
end
