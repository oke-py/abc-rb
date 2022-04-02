# frozen_string_literal: true

A, B = gets.chomp.split.map(&:to_f)
d = Math.sqrt((A**2) + (B**2))
printf("%.12f %.12f\n", A / d, B / d)
