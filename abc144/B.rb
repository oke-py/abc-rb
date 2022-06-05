# frozen_string_literal: true

N = gets.to_i

9.times do |i|
  9.times do |j|
    if (i + 1) * (j + 1) == N
      puts 'Yes'
      exit
    end
  end
end

puts 'No'
