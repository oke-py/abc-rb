RSpec.describe 'test' do
  it 'test with "3\n4 2 4\n"' do
    io = IO.popen("ruby abc209/F.rb", "w+")
    io.puts("3\n4 2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3\n100 100 100\n"' do
    io = IO.popen("ruby abc209/F.rb", "w+")
    io.puts("3\n100 100 100\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "15\n804289384 846930887 681692778 714636916 957747794 424238336 719885387 649760493 596516650 189641422 25202363 350490028 783368691 102520060 44897764\n"' do
    io = IO.popen("ruby abc209/F.rb", "w+")
    io.puts("15\n804289384 846930887 681692778 714636916 957747794 424238336 719885387 649760493 596516650 189641422 25202363 350490028 783368691 102520060 44897764\n")
    io.close_write
    expect(io.readlines.join).to eq("54537651\n")
  end

end
