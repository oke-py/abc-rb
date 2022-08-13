# frozen_string_literal: true

H1, W1 = gets.chomp.split.map(&:to_i)
a = []
H1.times do
  a << gets.chomp.split.map(&:to_i)
end

H2, W2 = gets.chomp.split.map(&:to_i)
b = []
H2.times do
  b << gets.chomp.split.map(&:to_i)
end

[*0...H1].combination(H2).each do |hc|
  tmph = []
  hc.each do |h|
    tmph << a[h]
  end

  [*0...W1].combination(W2).each do |wc|
    tmpc = Array.new(H2) { [] }

    wc.each do |w|
      H2.times do |h|
        tmpc[h] << tmph[h][w]
      end

      if tmpc == b
        puts 'Yes'
        exit
      end
    end
  end
end

puts 'No'
