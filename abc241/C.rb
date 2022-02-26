# frozen_string_literal: true

def valid?(sample)
  sample.count('#') >= 4
end

N = gets.to_i
s = Array.new(N)
N.times do |i|
  s[i] = gets.chomp.chars

  # 横
  (0..(N - 6)).each do |j|
    if valid?(s[i][j, 6])
      puts 'Yes'
      exit
    end
  end
end

N.times do |j|
  (0..(N - 6)).each do |i|
    # 縦
    if s[i, 6].count { |v| v[j] == '#' } >= 4
      puts 'Yes'
      exit
    end

    # ななめ
    next unless j <= N - 6

    # 左上 -> 右下
    a = []
    (0..5).each do |k|
      a.push(s[i + k][j + k])
    end

    if valid?(a)
      puts 'Yes'
      exit
    end

    # 右上 -> 左下
    b = []
    b.push(s[i + 5][j])
    b.push(s[i + 4][j + 1])
    b.push(s[i + 3][j + 2])
    b.push(s[i + 2][j + 3])
    b.push(s[i + 1][j + 4])
    b.push(s[i][j + 5])

    if valid?(b)
      puts 'Yes'
      exit
    end
  end
end
puts 'No'
