h, w = gets.chomp.split.map(&:to_i)
a = readlines(chomp: true).map { |line| line.split.map(&:to_i) }
(1..(h - 1)).each do |i1|
  ((i1 + 1)..h).each do |i2|
    (1..(w - 1)).each do |j1|
      ((j1 + 1)..w).each do |j2|
        if a[i1 - 1][j1 - 1] + a[i2 - 1][j2 - 1] > a[i2 - 1][j1 - 1] + a[i1 - 1][j2 - 1]
          puts 'No'
          return
        end
      end
    end
  end
end
puts 'Yes'
