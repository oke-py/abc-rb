# frozen_string_literal: true

s = gets.chomp.chars
puts s.map.with_index(1) { |v, i| i.odd? ? v : '' }.join
