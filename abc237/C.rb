s = gets.chomp
r = s.reverse
if s == r
  puts 'Yes'
  exit
end
if /^(?<head>a*).*(?<tail>a+)$/ =~ s
  if tail.size > head.size
    sn = 'a' * (tail.size - head.size) + s
    rn = sn.reverse
    if sn == rn
      puts 'Yes'
    else
      puts 'No'
    end
  else
    puts 'No'
  end
else
  puts 'No'
end
