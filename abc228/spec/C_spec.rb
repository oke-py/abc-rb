RSpec.describe 'test' do
  it 'test with "3 1\n178 205 132\n112 220 96\n36 64 20\n"' do
    io = IO.popen("ruby abc228/C.rb", "w+")
    io.puts("3 1\n178 205 132\n112 220 96\n36 64 20\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nYes\nNo\n")
  end

  it 'test with "2 1\n300 300 300\n200 200 200\n"' do
    io = IO.popen("ruby abc228/C.rb", "w+")
    io.puts("2 1\n300 300 300\n200 200 200\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nYes\n")
  end

  it 'test with "4 2\n127 235 78\n192 134 298\n28 56 42\n96 120 250\n"' do
    io = IO.popen("ruby abc228/C.rb", "w+")
    io.puts("4 2\n127 235 78\n192 134 298\n28 56 42\n96 120 250\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nYes\nNo\nYes\n")
  end

end
