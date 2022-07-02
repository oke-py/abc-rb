# frozen_string_literal: true

K = gets.to_i
h = K < 60 ? 21 : 22
m = K % 60

puts format('%d:%02d', h, m)
