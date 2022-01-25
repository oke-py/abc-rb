h, w = gets.chomp.split.map(&:to_i)
a = readlines(chomp: true).map {|line| line.split.map(&:to_i)}
for i1 in 1..(h-1) do
  for i2 in (i1+1)..h do
    for j1 in 1..(w-1) do
      for j2 in (j1+1)..w
        if a[i1-1][j1-1] + a[i2-1][j2-1] > a[i2-1][j1-1] + a[i1-1][j2-1]
          puts 'No'
          return
        end
      end
    end
  end
end
puts 'Yes'
