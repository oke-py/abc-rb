RSpec.describe 'test' do
  it 'test with "2\n4 0 1\n5 3\n2\n"' do
    io = IO.popen("ruby abc236/D.rb", "w+")
    io.puts("2\n4 0 1\n5 3\n2\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "1\n5\n"' do
    io = IO.popen("ruby abc236/D.rb", "w+")
    io.puts("1\n5\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "5\n900606388 317329110 665451442 1045743214 260775845 726039763 57365372 741277060 944347467\n369646735 642395945 599952146 86221147 523579390 591944369 911198494 695097136\n138172503 571268336 111747377 595746631 934427285 840101927 757856472\n655483844 580613112 445614713 607825444 252585196 725229185\n827291247 105489451 58628521 1032791417 152042357\n919691140 703307785 100772330 370415195\n666350287 691977663 987658020\n1039679956 218233643\n70938785\n"' do
    io = IO.popen("ruby abc236/D.rb", "w+")
    io.puts("5\n900606388 317329110 665451442 1045743214 260775845 726039763 57365372 741277060 944347467\n369646735 642395945 599952146 86221147 523579390 591944369 911198494 695097136\n138172503 571268336 111747377 595746631 934427285 840101927 757856472\n655483844 580613112 445614713 607825444 252585196 725229185\n827291247 105489451 58628521 1032791417 152042357\n919691140 703307785 100772330 370415195\n666350287 691977663 987658020\n1039679956 218233643\n70938785\n")
    io.close_write
    expect(io.readlines.join).to eq("1073289207\n")
  end

end
