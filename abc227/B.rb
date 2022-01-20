gets
puts gets.chomp.split.map(&:to_i).count {|s| (1..142).to_a.repeated_combination(2).all? { |a| s != 4 * a[0] * a[1] + 3 * a[0] + 3 * a[1] } }
