S, T, X = gets.split.map(&:to_i)
r = if S < T
      (S...T).include?(X)
    else
      (S..24).include?(X) || (0...T).include?(X)
    end
puts r ? :Yes : :No
