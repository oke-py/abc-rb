# frozen_string_literal: true

A, B = gets.chomp.split.map(&:to_i)
printf("%.3f\n", B.to_f / A)
