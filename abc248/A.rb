# frozen_string_literal: true

require 'set'

s1 = [*0..9].to_set
s2 = gets.chomp.chars.map(&:to_i).to_set
(s1 - s2).each { |v| puts v }
