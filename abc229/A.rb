S1 = gets.chomp
S2 = gets.chomp
puts [S1, S2] == ['.#', '#.'] || [S1, S2] == ['#.', '.#'] ? 'No' : 'Yes'
