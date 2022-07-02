N = gets.to_i
a = []
N.times do
  a << gets.chomp.split('')
end

ans = 0

N.times do |i|
  N.times do |j|
    # 上
    s = ''
    N.times do |k|
      s += a[i][(N + j - k) % N]
    end
    ans = s.to_i if ans < s.to_i

    # 下
    s = ''
    N.times do |k|
      s += a[i][(N + j + k) % N]
    end
    ans = s.to_i if ans < s.to_i

    # 左
    s = ''
    N.times do |k|
      s += a[(N + i - k) % N][j]
    end
    ans = s.to_i if ans < s.to_i

    # 右
    s = ''
    N.times do |k|
      s += a[(N + i + k) % N][j]
    end
    ans = s.to_i if ans < s.to_i

    # 左上
    s = ''
    N.times do |k|
      s += a[(N + i - k) % N][(N + j - k) % N]
    end
    ans = s.to_i if ans < s.to_i

    # 左下
    s = ''
    N.times do |k|
      s += a[(N + i - k) % N][(N + j + k) % N]
    end
    ans = s.to_i if ans < s.to_i

    # 右上
    s = ''
    N.times do |k|
      s += a[(N + i + k) % N][(N + j - k) % N]
    end
    ans = s.to_i if ans < s.to_i

    # 右下
    s = ''
    N.times do |k|
      s += a[(N + i + k) % N][(N + j + k) % N]
    end
    ans = s.to_i if ans < s.to_i
  end
end

puts ans
