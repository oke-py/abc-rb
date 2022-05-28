# frozen_string_literal: true

a = gets.chomp.split.map(&:to_i)
b = a.sort
puts a[1] == b[1] ? 'Yes' : 'No'
