# frozen_string_literal: true

N = gets.to_i

((N / 7) + 1).times do |i|
  if ((N - (i * 7)) % 4).zero?
    puts 'Yes'
    exit
  end
end

puts 'No'
